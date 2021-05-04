<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
  	<style>
  	
  	#pfcontent{
  	
  	/* 한 줄 자르기 */ 
  	display: inline-block; 
  	width: 200px; 
  	white-space: nowrap; 
  	overflow: hidden; 
  	text-overflow: ellipsis; 
  	
  	/* 여러 줄 자르기 추가 스타일 */ 
  	white-space: normal; 
  	line-height: 1.2; 
  	height: 3.6em; 
  	text-align: left; 
  	word-wrap: break-word; 
  	display: -webkit-box; 
  	-webkit-line-clamp: 3; 
  	-webkit-box-orient: vertical;  	
  	
  	}
  	
  	</style>
  
  
  </head>
  <body>
  
  <!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('./../resources/images/bg_4.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p> -->
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">호스트 프로필</h1>
          </div>
        </div>
      </div>
    </div>
    
	
    <section class="ftco-section bg-dark">
      <div class="container">
        <div class="row d-flex">
        
        <c:forEach var="host" items="${hostInfo}" > <!-- begin="0" end="10" step="1" varStatus="status" -->
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch border-0" style="border-radius:10px; width:100%; overflow:hidden; text-overflow:ellipsis; word-wrap:break-word;">
              <a href="${pageContext.request.contextPath}/host/profile.do?hostId=${host.HOST_ID}" class="block-20" style="background-image: url('../upload/host/pic${host.HOST_ID}.jpg');">
              </a>
              <div class="text p-4 d-block">
                <span class="heading">${host.NAME}</span>
                <h3 class="heading mt-3" id="pfcontent"><a href="#">${host.CONTENT}</a></h3>
                <div class="meta mb-3">
                <div><a href="${pageContext.request.contextPath}/host/profile.do?hostId=${host.HOST_ID}	">마지막 접속일 ${fn:substring(host.LAST_CONN_DATE,0,10)}</a></div>
                <!-- <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 후기 3</a></div> -->
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
        
        </div>
          
          <!-- 호스트가 많아지면 페이징 필요 -->
        <!-- <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div> -->
        	
      </div>
    </section>

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
  <script src="./../resources/js/main.js"></script>
    
  </body>
</html>