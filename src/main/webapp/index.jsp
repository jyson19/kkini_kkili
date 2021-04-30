<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>

    <title>인생을 바꿀 한끼, 끼니끼리</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<!-- 한글 관련 css 적용 -->
	<link rel="stylesheet" href="resources/css/korean.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/css/aos.css">

    <link rel="stylesheet" href="resources/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/style.css">

  </head>
  <body>
    
	<!-- 헤더 -->
	<!-- <div include-html="WEB-INF/tiles/header.html"></div> -->
	<%@include file ="WEB-INF/tiles/header.jsp" %>
	<!-- 헤더 종료 -->
    
	<!-- 검색창 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('resources/images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>컨택 검색하기 <br></strong> </h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">당신에게 필요한 조언자를 찾으세요.</p>
            <div class="block-17 my-4">
              <form action="${pageContext.request.contextPath}/contact/search.do" method="get" class="d-block d-flex">
                <div class="fields d-block d-flex">
                  	<input type="text" name="keyword" class="form-control" placeholder="관심 키워드를 입력하세요.   (현재 컨택검색만/ 추후 회원검색 추가예정)">
                  	<input type="text" name="region" class="form-control" hidden="hidden">
                  	<input type="text" name="startdate" class="form-control" hidden="hidden">
                  	<input type="text" name="enddate" class="form-control" hidden="hidden">
                  <!-- 
                  <div class="textfield-search one-third">
                  </div>
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="" id="" class="form-control" placeholder="키워드 검색">
                      <option value="keyword">키워드</option>
                      <option value="profile">프로필</option>
                    </select>
                  </div>
                   -->
                </div>
                <input type="submit" class="search-submit btn btn-primary" value="검색">  
              </form>
            </div>
            <p class="browse d-md-flex">
            	<span class="d-flex justify-content-md-center align-items-md-center" style="visibility: hidden;"><a href="#"><i class="flaticon-fork"></i></a></span>
            	<span class="d-flex justify-content-md-center align-items-md-center" style="visibility: hidden;"><a href="#"><i class="flaticon-hotel"></i></a></span> 
            	<span class="d-flex justify-content-md-center align-items-md-center" style="visibility: hidden;"><a href="#"><i class="flaticon-meeting-point"></i></a></span> 
            	<span class="d-flex justify-content-md-center align-items-md-center" style="visibility: hidden;"><a href="#"><i class="flaticon-shopping-bag"></i></a></span>
            </p>
          </div>
        </div>
      </div>
    </div>
	<!-- 검색창 종료-->
	<!-- 간단한 소개란 -->
    <section class="ftco-section services-section bg-dark">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-detective"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">현직자와의 만남</h3>
                <p>취업 경험부터 현직 업무에 대한 조언까지, 의미있는 식시시간을 만들어봐요</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-meeting-point"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">근처에 있는 경험자</h3>
                <p>현직 종사자, 미래의 대학교 선배로부터 노하우를 들어봐요</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-coffee-cup"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">가치있는 경험</h3>
                <p>차를 마시면서 내가 궁금한 것을 직접 물어보세요</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-fork"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">기회와 만남의 장소</h3>
                <p>진심이 담긴 정보 교환, 그리고 따듯한 밥 한끼로 유의미한 점심을 보내세요</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>
    <!-- 간단한 소개란 종료 -->
	<!-- 컨택 목록 -->
	<section class="ftco-section testimony-section bg-light text-dark">
		<div class="container">
		  <div class="row justify-content-start">
			<div class="col-md-5 heading-section ftco-animate">
				<span class="subheading">한 끼니, 우리끼리</span>
			  <h2 class="mb-4 pb-3"><strong>절호의 찬스</strong></h2>
			  <p>현직 종사자의 조언이 필요한데 만날 수가 없나요?</p>
			  <p>현업 프로젝트 경험을 듣고 싶지 않나요?</p>
			  <p>미래의 대학교 선배 이야기가 필요하지 않나요?</p>
			  <p>지금 인생을 바꿀 약속을 잡아보세요!</p>
			  <p><a href="tour.html" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">더 많은 컨택보기</a></p>
			</div>
		  <div class="col-md-1"></div>
			<div class="col-md-6 heading-section ftco-animate">
				<span class="subheading">지금 당장 신청하세요</span>
			  <h2 class="mb-4 pb-3"><strong>컨택 목록</strong></h2>
				<div class="row ftco-animate">
					<div class="col-md-12">
					  <div class="carousel-testimony owl-carousel" id="contactList">
					  	
						
						
					  </div>
					</div>
				  </div>
			</div>
		  </div>
		</div>
	  </section>

	<!-- 프로필 사용 -->
    <section class="ftco-section bg-light-brown">
		<div class="container">
		  <div class="row justify-content-start mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
			  <span class="subheading">호스트</span>
			  <h2><strong>프로필</strong></h2>
			</div>
		  </div>
		  <div class="row d-flex">
			<div class="col-md-3 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_1.jpg');">
				</a>
				<div class="text p-4 d-block">
					<span class="heading">김라인</span>
					<h3 class="heading mt-3"><a href="#">안녕하세요. 네이버 개발자로 일하고 있습니다.</a></h3>
					<div class="meta mb-3">
					<div><a href="#">최근 컨택 2021년 05월 22일</a></div>
					<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 후기 3</a></div>
					</div>
				  </div>
			  </div>
			</div>
			<div class="col-md-3 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_2.jpg');">
				</a>
				<div class="text p-4">
					<span class="heading">알렉스</span>
				  <h3 class="heading mt-3"><a href="#">산악자전거 동호회 회장 알렉스입니다. 여행 경험을 공유하고 싶어요.</a></h3>
				  <div class="meta mb-3">
					<div><a href="#">최근 컨택 2021년 06월 02일</a></div>
					<div><a href="#" class="meta-chat"><span class="icon-chat"></span>후기 1</a></div>
				  </div>
				</div>
			  </div>
			</div>
			<div class="col-md-3 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_3.jpg');">
				</a>
				<div class="text p-4">
					<span class="heading">토마스</span>
				  <h3 class="heading mt-3"><a href="#">산악자전거 동호회 회장 알렉스입니다. 여행 경험을 공유하고 싶어요.</a></h3>
				  <div class="meta mb-3">
					<div><a href="#">최근 컨택 2021년 06월 02일</a></div>
					<div><a href="#" class="meta-chat"><span class="icon-chat"></span>후기 1</a></div>
				  </div>
				</div>
			  </div>
			</div>
			<div class="col-md-3 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_4.jpg');">
				</a>
				<div class="text p-4">
					<span class="heading">귀찮스</span>
				  <h3 class="heading mt-3"><a href="#">산악자전거 동호회 회장 알렉스입니다. 여행 경험을 공유하고 싶어요.</a></h3>
				  <div class="meta mb-3">
					<div><a href="#">최근 컨택 2021년 06월 02일</a></div>
					<div><a href="#" class="meta-chat"><span class="icon-chat"></span>후기 1</a></div>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </section>
	  <!-- 프로필 종료 -->

	<!-- 매칭 건수 -->
    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(resources/images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">현황판</h2>
            <span class="subheading">경험이 전해지고 있습니다</span>
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="12500">0</strong>
		                <span>가입자수</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="41213">0</strong>
		                <span>컨택 성사 건수</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="22310">0</strong>
		                <span>컨택 예정 건수</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="10020400">0</strong>
		                <span>컨택의 가치</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>
	
	<!-- footer.html -->
	<!-- <div include-html="WEB-INF/tiles/footer.jsp"></div>-->
	<%@include file ="WEB-INF/tiles/footer.jsp" %>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
	
	<script src="resources/js/jquery.min.js"></script>
	
	<script>
    
	    $.ajax({
			type :'post',
	       	/* data : ({"cri":"1"}), */
	       	url : 'main/r/contactList.do',
	       	
	       	success : function(data){
	       		
	       		for(i=0; i<4; i++){
		       		$("#contactList").append(	       				
						'<div class="item">'+
						'<div class="testimony-wrap d-flex">'+
							'<a href="${pageContext.request.contextPath}/host/profile.do?hostId='+ data[i].HOST_ID+'">'+
								'<div>'+
									'<div class="user-img mb-4"'+
										'style="background-image: url(\'upload/host/'+data[i].HOST_PIC+'\')">'+
									'</div>'+
									'<div>'+
										'<p style="font-size: 2.0vmin; margin-bottom: 0%; text-align: center; color: black; font-weight: bold;">'+data[i].NAME+'</p>'+
										'<p style="font-size: 1.7vmin; text-align: center; color: dimgrey;">'+data[i].COMPANY+'</p>'+
									'</div>'+
								'</div>'+
							'</a>'+
							'<div class="text ml-4">'+
	
								<!--  <p class="name">${contact.NAME}</p><span>${contact.COMPANY}</span>-->
								'<p style="font-size: 20px; font-weight: bolder;">'+data[i].CONTACT_INTRO+'</p>'+
								'<span class="position">일시 : '+data[i].MEETING_TIME+'</span><br />'+
								'<span class="position">상호명 : '+data[i].STORE_NAME+'</span><br />'+
								'<span class="position">장소 : '+data[i].LOCATION+'</span>'+
								'<p class="name count_time_con">마감 시간 : <span class="count_time">'+data[i].REGI_DATE+'</span></p>'+
								'<p class="name">현재 최고가 : '+data[i].LAST_VALUE+'원</p>'+
								'<p>'+
									'<a href="${pageContext.request.contextPath}/contact/bid.do?contact_id='+data[i].CONTACT_ID+'"'+
										'class="btn btn-primary btn-outline-primary mt-1 px-3 pt-1 mb-0 float-right contact-submit">컨택'+
										'신청</a>'+
								'</p>'+
							'</div>'+
						'</div>'+
					'</div>')
	       		}
	       	}
		})
    
	
	
    </script>
	
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.timepicker.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>
	
    
  </body>
</html>