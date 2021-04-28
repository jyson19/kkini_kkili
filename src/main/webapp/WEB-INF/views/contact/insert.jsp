<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!String email = "";
	int hostId = 0;
	Boolean login = false;%>
<%
	if (session.getAttribute("member") != null) {
		email = (String) ((MemberVO) session.getAttribute("member")).getEmail();
		hostId = ((MemberVO) session.getAttribute("member")).getMemberId();
	}
	if (email.length() >= 1 && email.matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$")) {
		login = true;
	}
	pageContext.setAttribute("login", login);
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
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"	rel="stylesheet">
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

<!-- 
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">
 -->

<link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon">
<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="./../resources/assets/icon/icofont/css/icofont.css">
<!-- <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/font-awesome/css/font-awesome.min.css"> -->

<link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css">

<link rel="stylesheet" href="./../resources/css/kakaomap.css">
<!-- 
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&​libraries=services"></script>
     -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cea82077363b87add2391c95334df275&libraries=services,clusterer,drawing"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#bid_price:focus {
	outline: none;
}
</style>


</head>
<body>

	<!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->

	<div class="hero-wrap"
		style="background-color: #2DAD92; height: 120px;"></div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">

					<div class="d-flex p-5">
						<div class="bio align-self-md-center mr-5">
							<img src="images/person_1.jpg" alt="Image placeholder"
								class="img-fluid rounded-circle mb-4">
						</div>
						<div class="desc align-self-md-center">
							<span><h3 id="name" class="name font-weight-bold">김라인</h3></span>
							<span><h4 id="company" class="font-weight-light">네이버
									웹툰</h4></span>
							<p>안녕하세요. 네이버에서 일하고 있는 김라인입니다.</p>
							<p>네이버 웹툰 백엔드 개발자로 일하고 있으며 ... 얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나
								길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나 길게얼마나
								길게얼마나 길게얼마나 길게얼</p>
							<div class="tag-widget post-tag-container mb-5 mt-5">
								<div class="tagcloud">
									<a href="#" class="tag-cloud-link">네이버</a> <a href="#"
										class="tag-cloud-link">백엔드</a> <a href="#"
										class="tag-cloud-link">자바</a> <a href="#"
										class="tag-cloud-link">여행</a>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card" style="width: 60%; margin: 0 auto;">
						<div class="card-header">
							<h5>컨택을 생성합니다</h5>
						</div>
						<div class="card-block">
							<form class="form-material" action="" method="post">
								<div class="form-group form-default form-static-label">
									<input type="text" name="contactIntro" class="form-control"
										placeholder="제목을 입력해주세요"> <span class="form-bar"></span>
									<label class="float-label">제목</label>
								</div>
								<div class="form-group form-default form-static-label">
									<input type="text" name="meetingTime" class="form-control"
										placeholder="일시를 입력해주세요"> <span class="form-bar"></span>
									<label class="float-label">일시</label>
								</div>
								<div class="form-group form-default form-static-label">
									<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
									<input type="text" name="location" class="form-control"	placeholder="주소를 입력해주세요" id="location"></a>
									 <span class="form-bar"></span>
									<label class="float-label" id="insert-label-addr">주소</label>
								</div>
								<input type="hidden" name="storeName" class="form-control">
								<div class="form-group form-default form-static-label">
									<input type="text" name="startValue" class="form-control"
										placeholder="경매시작가를 입력해주세요"> <span class="form-bar"></span>
									<label class="float-label">경매시작가</label>
								</div>
								<input type="hidden" name="hostId" class="form-control"
									value="<%=hostId%>"> <input id="bid" type="button"
									value="생성" class="btn py-2 px-2 btn-primary col-md-2"
									style="float: right;">
							</form>
						</div>
					</div>
					
						

					</div>
						<div id="light" class="white_content">
							<div class="map_wrap">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

								<div id="menu_wrap" class="bg_white">
									<div class="option">
										<div>
											<form onsubmit="searchPlaces(); return false;">
												키워드 : <input type="text" value="판교역" id="keyword"
													size="15">
												<button type="submit">검색하기</button>
											</form>
										</div>
									</div>
									<hr>
									<ul id="placesList"></ul>
									<div id="pagination"></div>
								</div>
							</div>
							<a href="javascript:void(0)"
								onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'; document.getElementById('location').value='아';">Close</a>
						</div>
						<div id="fade" class="black_overlay"></div>
						
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

		<script>
			// 마커를 담을 배열입니다
			var markers = [];

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.3947702,127.1103856), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();

			// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});

			// 키워드로 장소를 검색합니다
			searchPlaces();

			// 키워드 검색을 요청하는 함수입니다
			function searchPlaces() {

				var keyword = document.getElementById('keyword').value;

				if (!keyword.replace(/^\s+|\s+$/g, '')) {
					alert('키워드를 입력해주세요!');
					return false;
				}

				// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
				ps.keywordSearch(keyword, placesSearchCB);
			}

			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면
					// 검색 목록과 마커를 표출합니다
					displayPlaces(data);

					// 페이지 번호를 표출합니다
					displayPagination(pagination);

				} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

					alert('검색 결과가 존재하지 않습니다.');
					return;

				} else if (status === kakao.maps.services.Status.ERROR) {

					alert('검색 결과 중 오류가 발생했습니다.');
					return;

				}
			}

			// 검색 결과 목록과 마커를 표출하는 함수입니다
			function displayPlaces(places) {

				var listEl = document.getElementById('placesList'), menuEl = document
						.getElementById('menu_wrap'), fragment = document
						.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

				// 검색 결과 목록에 추가된 항목들을 제거합니다
				removeAllChildNods(listEl);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				for (var i = 0; i < places.length; i++) {

					// 마커를 생성하고 지도에 표시합니다
					var placePosition = new kakao.maps.LatLng(places[i].y,
							places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
							i, places[i]); // 검색 결과 항목 Element를 생성합니다

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(placePosition);

					// 마커와 검색결과 항목에 mouseover 했을때
					// 해당 장소에 인포윈도우에 장소명을 표시합니다
					// mouseout 했을 때는 인포윈도우를 닫습니다
					(function(marker, title) {
						kakao.maps.event.addListener(marker, 'mouseover',
								function() {
									displayInfowindow(marker, title);
								});

						kakao.maps.event.addListener(marker, 'mouseout',
								function() {
									infowindow.close();
								});

						itemEl.onmouseover = function() {
							displayInfowindow(marker, title);
						};

						itemEl.onmouseout = function() {
							infowindow.close();
						};
					})(marker, places[i].place_name);

					fragment.appendChild(itemEl);
				}

				// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
				listEl.appendChild(fragment);
				menuEl.scrollTop = 0;

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}

			// 검색결과 항목을 Element로 반환하는 함수입니다
			function getListItem(index, places) {

				var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
						+ (index + 1)
						+ '"></span>'
						+ '<div class="info">'
						+ '   <h5>' + places.place_name + '</h5>';

				if (places.road_address_name) {
					itemStr += '    <span>' + places.road_address_name
							+ '</span>' + '   <span class="jibun gray">'
							+ places.address_name + '</span>';
				} else {
					itemStr += '    <span>' + places.address_name + '</span>';
				}

				itemStr += '  <span class="tel">' + places.phone + '</span>'
						+ '</div>';

				el.innerHTML = itemStr;
				el.className = 'item';

				return el;
			}

			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, idx, title) {
				var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
				imgOptions = {
					spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset : new kakao.maps.Point(13, 37)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new kakao.maps.MarkerImage(imageSrc,
						imageSize, imgOptions), marker = new kakao.maps.Marker(
						{
							position : position, // 마커의 위치
							image : markerImage
						});

				marker.setMap(map); // 지도 위에 마커를 표출합니다
				markers.push(marker); // 배열에 생성된 마커를 추가합니다

				return marker;
			}

			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
				markers = [];
			}

			// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
			function displayPagination(pagination) {
				var paginationEl = document.getElementById('pagination'), fragment = document
						.createDocumentFragment(), i;

				// 기존에 추가된 페이지번호를 삭제합니다
				while (paginationEl.hasChildNodes()) {
					paginationEl.removeChild(paginationEl.lastChild);
				}

				for (i = 1; i <= pagination.last; i++) {
					var el = document.createElement('a');
					el.href = "#";
					el.innerHTML = i;

					if (i === pagination.current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								pagination.gotoPage(i);
							}
						})(i);
					}

					fragment.appendChild(el);
				}
				paginationEl.appendChild(fragment);
			}

			// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
			// 인포윈도우에 장소명을 표시합니다
			function displayInfowindow(marker, title) {
				var content = '<div style="padding:5px;z-index:1;">' + title
						+ '</div>';

				infowindow.setContent(content);
				infowindow.open(map, marker);
			}

			// 검색결과 목록의 자식 Element를 제거하는 함수입니다
			function removeAllChildNods(el) {
				while (el.hasChildNodes()) {
					el.removeChild(el.lastChild);
				}
			}
		</script>




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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./../resources/js/main.js"></script>

</body>
</html>