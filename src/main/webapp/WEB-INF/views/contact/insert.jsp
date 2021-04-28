<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String email = "";
	String name = "";
	int auth = 0;
	Boolean login = false;
%>

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
    <link rel="stylesheet" href="./../resources/css/kakaomap.css">
    <style>
      #bid_price:focus{
        outline: none;
      }

    </style>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&libraries=LIBRARY"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&libraries=services"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&libraries=services,clusterer,drawing"></script>
    
  </head>
  <body>
    
  <!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->
    
  <div class="hero-wrap" style="background-color: #2DAD92; height: 120px;">
    
  </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-12 ftco-animate">

            <div class="d-flex p-5">
              <div class="bio align-self-md-center mr-5">
                <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid rounded-circle mb-4">
              </div>
              <div class="desc align-self-md-center">
                <span><h3 id="name" class="name font-weight-bold">김라인</h3></span>
                <span><h4 id="company" class="font-weight-light">네이버 웹툰</h4></span>
                <p>안녕하세요. 네이버에서 일하고 있는 김라인입니다.</p>
                <p>네이버 웹툰 백엔드 개발자로 일하고 있으며 ... 얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼</p>
                <div class="tag-widget post-tag-container mb-5 mt-5">
                    <div class="tagcloud">
                      <a href="#" class="tag-cloud-link">네이버</a>
                      <a href="#" class="tag-cloud-link">백엔드</a>
                      <a href="#" class="tag-cloud-link">자바</a>
                      <a href="#" class="tag-cloud-link">여행</a>
                    </div>
                </div>
              </div>
            </div>
              <div class="d-flex p-5">
              
              <div class="col-6 col" style="width:50%;">
              	<div id="map" style="height:90%;float: left;"></div>
              	<div style="width:100%; height:10%;float: left;">
              		<form onsubmit="searchPlaces(); return false;">
	              		<input type="text" style="width:90%; height:100%;"/>
    	          		<button type="submit" style="width:10%; height:100%;">검색</button>
              		</form>
              	</div>
              </div>
              
              
              <div class="col-6 col" style="width:50%; float: right;">
                <p>제목 : <input type="text" /></p>
                <p>일시 : <input type="text" /></p>
                <p>상호명 : <input type="text" /></p>
                <p>장소 : <input type="text" /></p>
                <p>경매 시작가 : <input type="text" /></p>
                  <div class ="col-md-8">
                  </div>
                  <input id="bid" type="button" value="생성" class="btn py-2 px-2 btn-primary col-md-2">               
                
              
              </div>
              
              </div>
            </div>

          </div>
          
          <!-- 지도 테스트 -->
 		  <!-- 
 		  	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275"/>
 		  <div id="map" style="width:500px;height:400px;">
 		  </div>
 		   -->
 		   <!-- 
 		  <div id="map"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275"></script>
		<script>
			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(37.160865, 127.754386), //지도의 중심좌표.
				level: 13 //지도의 레벨(확대, 축소 정도)
			};
			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		</script>
 		    -->
		

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&libraries=services"></script>
<script>
// 지도 js함수 다시 작성
</script>    
          

        </div>
      </div>
    </section> <!-- .section -->

    <!-- footer.html -->
	<%@include file="/WEB-INF/tiles/footer.jsp"%>

    
  

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
  <script src="./../resources/js/main.js"></script>
    
  </body>
</html>