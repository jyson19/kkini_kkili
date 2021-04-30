<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="com.kk.domain.MemberVO" %>

<% 

	MemberVO member = null;
	if(session.getAttribute("member")!=null){
		member = (MemberVO) session.getAttribute("member"); 	
	}
	
	
%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>끼니끼리 마이페이지</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">

</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <!-- 꼭추가 -->
            <nav class="navbar header-navbar pcoded-header"><%@include file ="header.jsp" %></nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    
                    <!-- nav.html -->
                    <nav class="pcoded-navbar"><%@include file ="nav.jsp"%></nav>
 
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <!-- <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Dashboard</h5>
                                            <p class="m-b-0">Welcome to Material Able</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.html"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <h2>요약</h2>
                                        <!-- Hover table card start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>컨택 내역</h5>
                                                <span>지금까지 진행했던 <code>컨택 내역</code>을 확인하세요.</span>
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option" style="width: 140px;">
                                                        <li><i class="fa fa open-card-option fa-times"></i></li>
                                                        <li><i class="fa fa-window-maximize full-card"></i></li>
                                                        <li><i class="fa fa minimize-card fa-plus"></i></li>
                                                        <li><i class="fa fa-refresh reload-card"></i></li>
                                                        <li><i class="fa fa-trash close-card"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block table-border-style" style="display: none;">
                                                <div class="table-responsive">
                                                	<c:if test="${empty contactInfo }">
	                                                   	    진행하신 컨택이 없으십니다. 인생을 바꿀 만남을 진행해보세요!
	                                                </c:if>
	                                                <c:if test="${!empty contactInfo }">
	                                                    <table class="table hover">
	                                                        <thead>
	                                                            <tr>
	                                                            	<th>포지션</th>
	                                                                <th>만난 이</th>
	                                                                <th>컨택 제목</th>
	                                                                <th>컨택 장소</th>
	                                                                <th>컨택 시간</th>
	                                                                <th>만남 가치</th>
	                                                                <th>만남 여부</th>
	                                                            </tr>
	                                                        </thead>
	                                                        <tbody>
		                                                        <c:forEach items="${contactInfo }" var="contact">
		                                                            <tr>
		                                                            	<c:if test="${contact.HOST_ID eq contact.MEMBER_ID }">
		                                                                	<td> 게스트 </td>
		                                                            	</c:if>
		                                                            	<c:if test="${contact.HOST_ID ne contact.MEMBER_ID }">
		                                                                	<td> 호스트 </td>
		                                                            	</c:if>
		                                                                <td><a href="../host/profile.do?hostId=${contact.MEMBER_ID}">${contact.NAME }</a></td>
		                                                                <td><a href="../contact/detail.do?contactId=${contact.CONTACT_ID}">${contact.CONTACT_INTRO}</a></td>
		                                                                <td>${contact.STORE_NAME }</td>
		                                                                <td>${contact.MEETING_TIME }</td>
		                                                                <td>${contact.LAST_VALUE }</td>
		                                                                <c:if test="${contact.QR_CHECK eq 1}">
		                                                                	
		                                                                	<td> 만남 완료 </td>
		                                                            	</c:if>
		                                                            	<c:if test="${contact.QR_CHECK eq 0}">
		                                                                	<c:if test="${contact.MEETING_TIME >= today }">
			                                                                	<td> 만남 예정 </td>
		                                                                	</c:if>
		                                                                	<c:if test="${contact.MEETING_TIME < today }">
			                                                                	<td> 만남 취소 </td>
		                                                                	</c:if>
		                                                            	</c:if>
		                                                            </tr>
	                                                            </c:forEach>
                                                            
	                                                        </tbody>
	                                                    </table>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Hover table card end -->
                                        <!-- Hover table card start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>관심 호스트 목록</h5>
                                                <span>내가 관심있는 <code>호스트</code> 목록입니다.</span>
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option" style="width: 140px;">
                                                        <li><i class="fa fa open-card-option fa-times"></i></li>
                                                        <li><i class="fa fa-window-maximize full-card"></i></li>
                                                        <li><i class="fa fa minimize-card fa-plus"></i></li>
                                                        <li><i class="fa fa-refresh reload-card"></i></li>
                                                        <li><i class="fa fa-trash close-card"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block table-border-style" style="display: none;">
                                                <div class="table-responsive">
                                                	<c:if test="${empty memberList }">
	                                                   	    주목하는 사람이 없습니다. 호스트 프로필에 접속해서 별표를  눌러보세요!
	                                                </c:if>
	                                                <c:if test="${!empty memberList }">
	                                                    <table class="table table-hover">
	                                                        <thead>
	                                                            <tr>
	                                                                <th>고유번호</th>
	                                                                <th>이름</th>
	                                                                <th>소속</th>
	                                                                <!-- <th>대학교</th> -->
	                                                                <!-- <th>삭제</th> -->
	                                                            </tr>
	                                                        </thead>
	                                                        <tbody>
		                                                        <c:forEach items="${memberList }" var="member">
		                                                            <tr>
		                                                                <td>${member.MEMBER_ID }</td>
		                                                                <td><a href="../host/profile.do?hostId=${member.MEMBER_ID }">${member.NAME }</a></td>
		                                                                <td>${member.COMPANY }</td>
		                                                                <!-- <td>추후 업데이트 예정</td> -->
		                                                                <!-- <td><button id="delete_btn" class="btn btn-secondary">삭제</button></td> -->
		                                                            </tr>
	                                                            </c:forEach>
	                                                        </tbody>
	                                                    </table>
	                                                </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Hover table card end -->
                                        
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->

    <!-- Required Jquery -->
    <script type="text/javascript" src="./../resources/assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="./../resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="./../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="./../resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="./../resources/assets/js/pcoded.min.js"></script>
    <script src="./../resources/assets/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="./../resources/assets/js/script.js "></script>
</body>

</html>
