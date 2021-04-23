<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<!-- 헤더 종료 -->


    <div class="hero-wrap bg-mint" style="height: 120px">
      <div class="overlay"></div>
      <div class="container">
        <!-- <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Tour</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Destination</h1>
          </div>
        </div> -->
      </div>
    </div>

	<section class="ftco-section ftco-degree-bg">
		
      <div class="container">
		<h2 class="mb-4 text-dark">컨택 조회</h2>
		<div class="row">
        	<div class="col-lg-3 sidebar ftco-animate">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">검색하기</h3>
        			<form action="#">
        				<div class="fields">
		              <div class="form-group">
		                <input type="text" class="form-control" placeholder="관심 키워드 입력">
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="" id="" class="form-control" placeholder="Keyword search">
	                      <option value="">지역</option>
	                      <option value="seoul">서울</option>
	                      <option value="gyeonggi">경기</option>
	                      <!-- <option value="">Lodon United Kingdom</option>
	                      <option value="">Paris Italy</option> -->
	                    </select>
	                  </div>
		              </div>
		              <div class="form-group">
		                <input type="text" id="checkin_date" class="form-control" placeholder="시작일">
		              </div>
		              <div class="form-group">
		                <input type="text" id="checkout_date" class="form-control" placeholder="마감일">
		              </div>
		              <div class="form-group">
		              	<!-- <div class="range-slider">
							  <p>가격</p>
		              		<span>
								<input type="number" value="10000" min="10000" max="120000"/>	-
								<input type="number" value="50000" min="10000" max="120000"/>
								</span>
								<input value="1000" min="10000" max="1000000" step="1000" type="range"/>
								<input value="50000" min="10000" max="1000000" step="1000" type="range"/>
								</svg>
							</div>-->
		              </div>
		              <div class="form-group">
		                <input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
        		</div>

        		<!-- <div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">Star Rating</h3>
        			<form method="post" class="star-rating">
							  <div class="form-check">
									<input type="checkbox" class="form-check-input" id="exampleCheck1">
									<label class="form-check-label" for="exampleCheck1">
										<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
									</label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						    	   <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
						      </label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
						     </label>
							  </div>
							  <div class="form-check">
							    <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
						      </label>
							  </div>
							  <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="exampleCheck1">
						      <label class="form-check-label" for="exampleCheck1">
						      	<p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
							    </label>
							  </div>
							</form>
        		</div> -->
          </div>

			<div class="col-lg-9">
				<div class="col-md-12">

				<!-- 
				<div class="item border-top">
					<div class="testimony-wrap d-flex">
					  <div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
					</div>
					  <div class="text ml-4">
						<p class="mb-3">안녕하세요. <br><br> 
							네이버 백엔드 개발 종사자입니다. 점심시간 이용해서 같이 밥 먹고 싶네요. 같이 현업 정보 공유하고 싶습니다. 1안 입니다.</p>
							<p class="name">김라인</p>
						<span class="position">경기도 성남시 정자역 5번 출구 앞</span>
						<p class="name">10,000원</p> 
						<p><a href="meeting_detail.html" class="btn btn-primary btn-outline-primary mt-1 px-3 pt-1 mb-0 float-right">컨택 신청</a></p>
					  </div>
					</div>
				  </div>
				 -->

				<c:forEach items="${contactList }" var="contact">

				  <div class="item border-top">
					<div class="testimony-wrap d-flex">
					  <div class="user-img mb-4" style="background-image: url(./../resources/images/person_2.jpg)">
					</div>
					  <div class="text ml-4">
						<p class="mb-3">${contact.contactIntro}</p>
							<p class="name">${contact.hostId} 이름매핑 추가</p>
						<span class="position">${contact.location}</span>
						<p class="name">${contact.lastValue}</p> 
						<p><a href="meeting_detail.html" class="btn btn-primary btn-outline-primary mt-1 px-3 pt-1 mb-0 float-right">컨택 신청</a></p>
					  </div>
					</div>
				  </div>
				</c:forEach>


				</div>
			</div>
		  

          <!-- <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-6.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">Paris, Italy</a></h3>
				    						<p class="rate">
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star"></i>
				    							<i class="icon-star-o"></i>
				    							<span>8 Rating</span>
				    						</p>
			    						</div>
			    						<div class="two">
			    							<span class="price">$200</span>
		    							</div>
		    						</div>
		    						<p>Far far away, behind the word mountains, far from the countries</p>
		    						<p class="days"><span>2 days 3 nights</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		    							<span class="ml-auto"><a href="#">Discover</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div> -->
          	</div>
			  
			<!-- 하단 숫자 -->
          	<div class="row mt-5">
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
		        </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <!-- footer.html -->
	<%@include file ="/WEB-INF/tiles/footer.jsp" %>

	<!-- 헤더와 풋터 관리해주는 자바스크립트 -->
	<script src="/resources/js/includeHTML.js"></script>
	<script>
	  	// 헤더, 풋터 등 불러오는 함수
		includeHTML();
	</script>

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
  <script src="./../resources/js/range.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./../resources/js/google-map.js"></script>
  <script src="./../resources/js/main.js"></script>
  <script>

  </script>

    
  </body>
</html>