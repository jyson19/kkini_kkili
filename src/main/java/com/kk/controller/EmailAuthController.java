package com.kk.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kk.domain.EmailAuthVO;
import com.kk.service.MailSendService;

@Controller
public class EmailAuthController {
	
    @Autowired
    private MailSendService mss;

    @RequestMapping("main/emailAuth/sendingEmail.do")
     public void btnClick(@ModelAttribute EmailAuthVO vo){
    	
    	System.out.println("EmailAuthController : 메일인증 시작");
    	
        //// 일단 이메일 보내기
    	// 이메일 인증키 생성 및 전송
        String authKey = mss.sendAuthMail(vo.getEmail());
        
        //// DB 저장 과정
        // 설정한 인증키 vo에 반영
        vo.setAuthKey(authKey);
        
        // DB에 해당 메일 존재 여부 확인
    	if(mss.getEmail(vo)==null) {
    		// 존재하지 않는 경우 insert // DB에 기본정보 insert
    		System.out.println("EmailAuthController : 메일인증 테이블에 내 데이터 주입");
    		vo.setAuthStatus(0);
    		mss.insert(vo);
    	} else {
    		// 존재시 업데이트 - state는 0으로 셋팅해주기
    		System.out.println("EmailAuthController : 메일인증 테이블 내 데이터 업데이트");
    		vo.setAuthStatus(0);
    		mss.update(vo);
    	}
  	}
    
    // 이메일 링크 클릭시    
    @RequestMapping(value="main/signUpConfirm", produces="application/text; charset=utf8")
    public String confirm(@ModelAttribute EmailAuthVO vo){
    	
        // 요청받은 것을 DB에서 확인
    	EmailAuthVO dbVO = mss.getEmail(vo);
    	// 일치시 getStatus 변경하여 업데이트
    	if(dbVO.getAuthKey().equals(vo.getAuthKey())) {
    		vo.setAuthStatus(1);
    		mss.update(vo);
    		System.out.println("EmailAuthController : 메일인증 성공 페이지로 이동");
    		return "redirect:authSuccess.do";
    	}
    	System.out.println("EmailAuthController : 메일인증 실패 페이지로 이동");
    	return "redirect:authFail.do";
 	}
    
    // 인증페이지 연결
    @RequestMapping(value= {"main/authSuccess.do", "main/authFail.do"}, produces="application/text; charset=utf8")
    public void authPage(){
 	}
    
    // 회원가입 버튼 활성화시 ajax 통신으로 유효성 확인하기
    @RequestMapping(value="main/emailAuth/signUp.do", produces="application/text; charset=utf8")
    @ResponseBody
    public String finalConfirm(@ModelAttribute EmailAuthVO vo){
    	
    	// default는 인증 미완료
    	String data = "0";
    	
        // 요청받은 것을 DB에서 꺼내오기
    	EmailAuthVO dbVO = mss.getEmail(vo);
    	// getStatue가 1인 경우(이메일 인증 완료), data = 1로 변경
    	if(dbVO.getAuthStatus() == 1) {
    		data = "1";
    	}
    	
    	return data;
 	}
}
