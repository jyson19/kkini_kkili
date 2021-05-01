package com.kk.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;
import com.kk.domain.PageMaker;
import com.kk.domain.PagingCriteria;
import com.kk.service.ContactService;

// 컨택 관련 controller

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;

	// 컨택 목록
	@RequestMapping("contact/list.do")
	public void getContactList(PagingCriteria cri, Model model, HttpSession session) {
		System.out.println("ContactController.getContactList");

		List<Map<String, String>> boardList = contactService.getContactList(cri);

		int total = contactService.totalCnt();
		System.out.println("컨택 글 갯수 : " + total);

		model.addAttribute("contactList", boardList);
		model.addAttribute("paging", new PageMaker(cri, total));

		// 로그인 시
		if (session.getAttribute("member") != null) {
			int memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
			System.out.println("memberId : " + memberId);
			// 유저가 호스트일 때
			if (memberId >= 1) {
				Map<String, String> someContact = contactService.getContactOne(memberId);
//				if (someContact.containsKey("HOST_ID")) {
//					System.out.println("매핑 갯수 : " + someContact.size());
				model.addAttribute("contactOne", someContact);
			}
		}
	}

	// 컨택 검색(키워드 + 지역 + 날짜)
	// 0 : null
	// 1 : 서울 / 경기 / 인천
	// 2 : 강원
	// 3 : 대전 / 세종 / 충북 / 충남
	// 4 : 광주 / 전북 / 전남
	// 5 : 부산 / 대구 / 울산 / 경북 / 경남
	// 6 : 제주
	@RequestMapping("contact/search.do")
	public void searchContactList(Model model, //
			@RequestParam("keyword") String keyword, //
			@RequestParam("region") String region, //
			@RequestParam("startdate") String startdate, //
			@RequestParam("enddate") String enddate) {
		System.out.println("keyword : " + keyword);
		System.out.println("region : " + region);
		System.out.println("startdate : " + startdate);
		System.out.println("enddate : " + enddate);

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("keyword", keyword);
		map.put("region", region);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		model.addAttribute("contactList", contactService.searchContactList(map));
	}

	// 컨택 생성
	@RequestMapping("contact/insert.do")
	public void insertContact(ContactVO vo, HttpSession session, Model model) {
		System.out.println("ContactController.insertContact() 실행");

		// 호스트 프로필 전달
		int memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
		model.addAttribute("hostProfile", contactService.getHostProfile(memberId));
	}

	// 컨택 생성확인
	@RequestMapping("contact/insertCheck.do")
	public String insertCheck(ContactVO vo, HttpSession session) {
		System.out.println("ContactController.insertCheck() 실행");
		if (contactService.insertContact(vo) == 1) {
			return "redirect:/contact/list.do";
		}
		return "redirect:/contact/insert.do";
	}

	@RequestMapping("contact/bid.do")
	public void bidContact(HttpServletRequest request, Model model) {
		System.out.println("ContactController.bidContact() 실행");
		int contactId = Integer.parseInt(request.getParameter("contact_id"));
		System.out.println("컨택 번호: " + contactId);
		model.addAttribute("bidView", contactService.getBidView(contactId));
//		, String lvc, String lastValue, String hostId
//		System.out.println(lvc + " : " + lastValue + " : " + hostId);
	}

	@RequestMapping(value = "contact/bid_after.do", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String bidAfter( //
			String lvc, //
			String lastValue, //
			String hostId, //
			String memberId, //
			String bidPrice, //
			String contactId, //
			String loginFlag, Model model) { //
		System.out.println("ContactController.bidAfter() 실행");
		System.out.println("lvc : " + lvc + "\nlastValue : " + lastValue + "\nhostId : " + hostId + "\nmemberId : "
				+ memberId + "\ncontactId : " + contactId + "\nbidPrice : " + bidPrice);

		// 입찰 금액이 없을시(null)
		if (bidPrice.isEmpty()) {
			return "입찰 금액을 입력해주세요.";
			
		// 로그인 상태가 아닐시
		} else if (loginFlag.equals("false")) {
			return "로그인 이후 이용 가능합니다.";
			
		// 현재 최고가보다 낮거나 같은 금액일시
		} else if (Integer.parseInt(lastValue) >= Integer.parseInt(bidPrice)) {
			// 같은 시간에 누군가 최고금액 입찰시 해당 데이터 변경
			int f_lastValue = contactService.lastValueCheck(Integer.parseInt(contactId));
			return "최고가보다 높은 금액을 입력해주세요.:" + f_lastValue;
			
		// 마감완료 됐을시
		} else if (lvc.equals("마감 완료")) {
			return "해당 컨택은 마감 완료되었습니다.";
			
		// 개최한 호스트와 같은 사람일시
		} else if (hostId.equals(memberId)) {
			return "개최자는 입찰에 참여할 수 없습니다.";
			
		// 정상처리
		} else {
			// 1. 컨택 테이블 입찰자 변경
			// 2. 컨택 테이블 last_value 변경
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("memberId", memberId);
			map.put("bidPrice", bidPrice);
			map.put("contactId", contactId);
			int resultInt = contactService.bidUpdate(map);
			System.out.println("resultInt : " + resultInt);
			if (resultInt == 1) {
				return "입찰이 완료되었습니다!";
			}

			// 추후 추가 : 컨택 history
			return "입찰 실패.. 이유는.. 음..";
		}
	}

	// 만남확인 (qr check)
	@RequestMapping("contact/qr_check.do")
	public void qrCheck(HttpServletRequest request, Model model) {
		System.out.println("ContactController.qrCheck() 실행");

		String contactId = request.getParameter("contactId");
		String memberId = request.getParameter("memberId");
		System.out.println("contactId : " + contactId);
		System.out.println("memberId : " + memberId);
		//파일이 업로드 될 경로 설정 
		String root_path = request.getSession().getServletContext().getRealPath("/upload/qrcheck/");
		//위에서 설정한 경로의 폴더가 없을 경우 생성 
		File dir = new File(root_path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}

		try {
			File file = null;
			// qr코드 이미지를 저장할 디렉토리 지정
			System.out.println(root_path);
			file = new File(root_path);
			if (!file.exists()) {
				file.mkdirs();
			}
			// qr코드 인식시 이동할 url 주소
			// 현재 임시 ip주소 -> 도메인변경해야함
			String codeurl = new String(("http://112.170.105.233:8180/kkini_kkili/qr/signin.jsp?contactId=" + contactId + "&memberId=" + memberId).getBytes("UTF-8"), "ISO-8859-1");
			// qr코드 바코드 생성값
			int qrcodeColor = 0xFF000000;
			// qr코드 배경색상값
			int backgroundColor = 0xFFFFFFFF;

			QRCodeWriter qrCodeWriter = new QRCodeWriter();
			// 3,4번째 parameter값 : width/height값 지정
			BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE, 200, 200);
			//
			MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor, backgroundColor);
			BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix, matrixToImageConfig);
			// ImageIO를 사용한 바코드 파일쓰기
			ImageIO.write(bufferedImage, "png", new File(root_path + "qr_img.png"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// memberController.signinAttempt로부터 전달받음
	// 컨택 만남처리
	@RequestMapping(value = "contact/qrCheckIn.do")
	public void qrCheckIn(HttpServletRequest request) {
		System.out.println("ContactController.qrCheckIn 실행");
		String contactId = request.getParameter("contactId");
		String memberId = request.getParameter("memberId");
		System.out.println("in QRcode .. contactId : " + contactId);
		System.out.println("in QRcode .. memberId : " + memberId);
		ContactVO contact = new ContactVO();
		contact.setContactId(Integer.parseInt(contactId));
		contact.setGuestId(Integer.parseInt(memberId));
		int result = contactService.qrCheckIn(contact);
		if(result == 1) {
			// 만남처리 성공
			System.out.println("컨택 qr_check값 변경 완료");
			
			// 수익배분 처리 코드 추가(관리자95% : 호스트5%)
			
		} else {
			// 만남처리 실패
			System.out.println("컨택 qr_check값 변경 실패");
			
		}
	}
}
