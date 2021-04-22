<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>

    <title>인생을 바꿀 한끼, 끼니끼리</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<!-- 한글 관련 css 적용 -->
	<link rel="stylesheet" href="./../resources/css/korean.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="./../resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./../resources/css/animate.css">
    
    <link rel="stylesheet" href="./../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./../resources/css/magnific-popup.css">

    <link rel="stylesheet" href="./../resources/css/aos.css">

    <link rel="stylesheet" href="./../resources/css/ionicons.min.css">

    <link rel="stylesheet" href="./../resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./../resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="./../resources/css/flaticon.css">
    <link rel="stylesheet" href="./../resources/css/icomoon.css">
    <link rel="stylesheet" href="./../resources/css/style.css">

	

  </head>
  <body>
    
  <!-- 헤더 -->
  	<%@include file ="/WEB-INF/tiles/header.jsp" %>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('./../resources/images/bg_2.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Contact</span></p> -->
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">우리와 함께 여행을 떠날 <br> 동료를 구합니다</h1>
          </div>
        </div>
      </div>
    </div>

		<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">연락사항</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3">
            <p><span>주소: </span> <br>대한민국 경기도 성남시 수정구 창업로 54 가동 0층, 끼니끼리</p>
          </div>
          <div class="col-md-3">
            <p><span>전화: </span> <br> <a href="tel://03129038">	+82 31-290-38XX
            </a></p>
          </div>
          <div class="col-md-3">
            <p><span>이메일: </span> <br> <a href="mailto:manager@kkinikkili.com">	manager@kkinikkili.com</a></p>
          </div>
          <div class="col-md-3">
            <p><span>웹사이트: </span> <br> <a href="#">kkinikkili.com</a></p>
          </div>
        </div>
        <div class="row block-9">
          <div class="col-md-12 pr-md-5">
            <form action="mailto:kkinikkili@gmail.com" method="post" accept-charset="UTF-8" >
              <div class="form-group">
                <input type="text" class="form-control" placeholder="그대의 이름">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="그대의 이메일" required>
              </div>
              <div class="form-group">
                <input type="text" name="subject" class="form-control" placeholder="제목">
              </div>
              <div class="form-group">
                <textarea id="message" name="message" cols="30" rows="7" class="form-control" placeholder="문의사항"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="끼니끼리에 컨택하기" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          </div>
          <!-- 지도  -->
          <!-- <div class="col-md-6" id="map"></div> -->
        </div>
      </div>
    </section>

    <!-- footer.html -->
  <%@include file ="/WEB-INF/tiles/footer.jsp" %>


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./../resources/js/google-map.js"></script>
  <script src="./../resources/js/main.js"></script>


    
  </body>
</html>