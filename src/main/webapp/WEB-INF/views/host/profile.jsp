<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String hostId = request.getParameter("hostId");

%>	
	
<!DOCTYPE html>
<html lang="ko">
<head>
<title>인생을 바꿀 한끼, 끼니끼리</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 한글 관련 css 적용 -->
<link rel="stylesheet" href="./../resources/css/korean.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="./../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="./../resources/css/animate.css">

<link rel="stylesheet" href="./../resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="./../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./../resources/css/magnific-popup.css">

<link rel="stylesheet" href="./../resources/css/aos.css">

<link rel="stylesheet" href="./../resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="./../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="./../resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="./../resources/css/flaticon.css">
<link rel="stylesheet" href="./../resources/css/icomoon.css">
<link rel="stylesheet" href="./../resources/css/style.css">
</head>
<body>

	<!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->


	<div class="hero-wrap js-fullheight"
		style="background-image: url('./../resources/images/bg_4.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p> -->
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">호스트
						프로필</h1>
				</div>
			</div>
		</div>
	</div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">

					<div class="d-flex p-5">
						<div class="bio align-self-md-center mr-5">
							<img src="../upload/host/pic<%=hostId%>.jpg" alt="Image placeholder"
								class="img-fluid rounded-circle mb-4">
						</div>
						<div class="desc align-self-md-center">
							<h3 class="name">${hostInfo.name}</h3>
							<p>소속 : ${hostVO.company}</p>
							<p>최근 접속일 : ${hostInfo.lastConnDate}</p>
							<p>간단한 소개 : ${hostVO.content}</p>
						</div>
					</div>

					호스트 프로필 페이지 표기 목록 1. 사진 2. 소속(회사) 3. 생성했던 컨택 목록 4. 댓글 제외 항목 1. 자기소개
					2.


					<!-- <h2 class="mb-3">간단한 자기소개 부탁드립니다!</h2>
					<p>안녕하세요. 오늘 날씨가 참 좋습니다. 어떻게 잘 지내고 계신지는 모르겠어요. 요즘 저는 프로젝트하나라
						바쁘게 지내는 것 같습니다. 요즘 저는 프로젝트하나라 바쁘게 지내는 것 같습니다. 요즘 저는 프로젝트하나라 바쁘게
						지내는 것 같습니다. 토스도 공고 나왔던데 가고 싶어요. 아무튼 프로젝트 잘 해서 포트폴리오 한번 기막히게 구성해
						봅시다.</p>
					
					<p>요즘 코로나 때문에 누구 만나지도 못하는데, 이번에 이런 서비스가 생겨서 한번 사용해보고 싶네요. 어쨌든지
						간에 재밌게 사용할 수 있을 것 같습니다. 점심한끼 합시다.</p>
					<h2 class="mb-3 mt-5">어떤 업무에 종사하고 계신가요?</h2>
					<p>나는 지금 포트폴리오를 만들기 위해 열심히 프론트단을 고치고 있습니다. 장인정신이 필요한 작업인 거 같아요.
						나중에 백엔드에서 DB로 연결해야하고 지금 링크건 것도 전부 다 콘트럴러 쪽으로 변경해야하는데 팀원들이 많이 도와주리라
						믿습니다. 감사합니다.</p>
					
					<p>참 사진이 이쁜 거 같아요. 그죠? 빨리 여행이나 가고 싶네요. 근데 돈이 없어서 ㅠㅠ. 일단 취직부터
						해야겠습니다. 어떤 말을 써야할지 감이 안잡히는데 일단 구성은 해야 하니까요...</p>
					<p>미국의 하버드, 그리고 엠아이티, 유럽의 저기 어디냐 아.. 기억이 안나는데 취리히 공대 말고 로잔 공대다.
						로잔 공대가 멋졌던 것 같습니다. 꼭 한번 공부하러 가보고 싶네요. 자연 환경속에서 공부가 잘되겠죠?</p>
					<p>대충 말해도 뭔가 있어보이는 말이 있을지 모르겠네요. 구성은 알차고 좋아야 하니까 대충 말해도 보이겠죠.</p>
					<p>사진이 이쁜 거 같아요. 그죠? 빨리 여행이나 가고 싶네요. 근데 돈이 없어서 ㅠㅠ. 일단 취직부터
						해야겠습니다. 어떤 말을 써야할지 감이 안잡히는데 일단 구성은 해야 하니까요</p>
					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="tagcloud">
							<a href="#" class="tag-cloud-link">네이버</a> <a href="#"
								class="tag-cloud-link">백엔드</a> <a href="#"
								class="tag-cloud-link">자바</a> <a href="#" class="tag-cloud-link">여행</a>
						</div>
					</div> -->


					<!-- 댓글 파트 -->

					<div class="pt-5 mt-5">
						<h3 class="mb-5">
							댓글 <span id="cmt_length">0</span>개
						</h3>
						<ul class="comment-list" id="comment_list">

							<li class="comment">
								<div class="vcard bio">
									<img src="../upload/host/pic0.jpg" alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>관리자</h3>
									<div class="meta">2021-04-19 00:00:00</div>
									<p>남겨진 댓글이 없습니다. 댓글을 남겨주세요!</p>
								</div>
							</li>
						</ul>
						<!-- END comment-list -->

						<div class="comment-form-wrap pt-5">
							<h3 class="mb-5">후기남기기</h3>
							<form action="" class="p-5 bg-light">

								<!-- <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div> -->

								<div class="form-group">
									<label for="message">메시지</label>
									<textarea name="" id="message" cols="30" rows="10"
										class="form-control" required></textarea>
								</div>
								<div class="form-group">
									<input type="button" value="남기기"
										class="btn py-3 px-4 btn-primary" id="reply_complete">
								</div>

							</form>
						</div>
					</div>

				</div>

			</div>
		</div>
	</section>
	<!-- .section -->

	<!-- footer.html -->
	<%@include file="/WEB-INF/tiles/footer.jsp"%>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="./../resources/js/jquery.min.js"></script>
	<script src="./../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="./../resources/js/popper.min.js"></script>
	<script src="./../resources/js/bootstrap.min.js"></script>
	<script src="./../resources/js/jquery.easing.1.3.js"></script>
	<script src="./../resources/js/jquery.waypoints.min.js"></script>
	<script src="./../resources/js/jquery.stellar.min.js"></script>
	<script src="./../resources/js/owl.carousel.min.js"></script>
	<script src="./../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./../resources/js/aos.js"></script>
	<script src="./../resources/js/jquery.animateNumber.min.js"></script>
	<script src="./../resources/js/bootstrap-datepicker.js"></script>
	<script src="./../resources/js/jquery.timepicker.min.js"></script>
	<script src="./../resources/js/scrollax.min.js"></script>
	<script src="./../resources/js/google-map.js"></script>
	<script src="./../resources/js/main.js"></script>

	<script>
  // 댓글 남기기
  $("#reply_complete").click(function(){
	  $.ajax({
		type :'post',
       	data : { "cmt" : $("#message").val(), "hostId" : ${param.hostId}},
       	url : 'saveCmt.do',
       	success : function(data){
       		// 정상적으로 등록시
       		commentStart();
       	},
	  })
	  
	  $("#message").val("");
  })
  
  // 댓글 삭제 버튼
  $("#reply_delete").click(function(){
	  alert("test_delete");
  })
  
  // 댓긇 가져와서 내용을 추가하는 함수
  function commentStart(){
	  $.ajax({
			type :'post',
	       	data : {"hostId" : ${param.hostId}},
	       	url : 'getCmtList.do',
	       	success : function(data){
	       		
	       		$("#cmt_length").text(data.length);
	       		
	       		if(data.length != 0){
	       			// 기존 댓글 없애고 다시 시작
	       			commentClear();

		       		// 정상적으로 등록시
		       		for(var i=0; i<data.length; i++) {
			       		
		       		    /* 
				       		cmtId: 5
				       		content: "asd"
				       		guestId: 0
				       		hostId: 3
				       		writeDate: "2021-04-28 12:33:21"
				       	*/
				       	
				       	let list = $("#comment_list");
		       		    
				       	list.append('<li class="comment border-bottom">' +
				       				'<div class="vcard bio">'+
				       				'<img src="../upload/host/pic'+data[i].GUEST_ID+'.jpg" onerror="this.src=\'../upload/host/pic0.jpg\'" alt="Image placeholder">'+
				       				'</div>'+
				       				'<div class="comment-body">'+
				       				'<h3 class="cmt_name">'+data[i].NAME+'</h3>'+'<button class="btn btn-light btn-sm reply_delete float-right" value="'+ data[i].CMT_ID +'">삭제</button>'+
				       				'<div class="meta">'+data[i].WRITE_DATE+'</div>'+
				       				'<p>'+data[i].CONTENT+'</p>'+
									'</div>'+
									'</li>');
		       		    
		       		}
		       		
		       		// 위의 리스트 생성 후 삭제 버튼 클릭시 발동
		       		$(".reply_delete").click(function(){
		       			let btn = $(this);	
		       			
		       			$.ajax({
		       				type :'post',
		       		       	data : ({"cmtId" : btn.val(), "hostId" : ${param.hostId}}),
		       		       	url : 'deleteCmt.do',
		       		       	success : function(result){
		       		       		if(result == '1'){
		       		       			btn.parent().parent().remove();
		       		       		}
		       		       	}   	
		       			})
		       		})
	       		}
	       	}
	})
  }
  
	//댓글 리스트 삭제 함수
	function commentClear(){
		list = $("#comment_list");
		list.empty();
	}
	
	commentStart();



  
  </script>

</body>
</html>