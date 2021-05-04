<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kk.domain.MemberVO"%>
<%
	MemberVO member = null;
	if (session.getAttribute("member") != null) {
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
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<!-- Favicon icon -->
<link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon" />
<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<!-- waves.css -->
<link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all" />
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css" />
<!-- waves.css -->
<link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all" />
<!-- themify icon -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css" />
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/font-awesome-n.min.css" />
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/font-awesome.min.css" />
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css" />
<!--  mdb.min.css -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/mdb.min.css" />
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="./../resources/css/password.css" />
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
			<nav class="navbar header-navbar pcoded-header"><%@include file="header.jsp"%></nav>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<!-- nav.jsp -->
					<nav class="pcoded-navbar"><%@include file="nav.jsp"%></nav>

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
										<div class="row">
											<div class="col-xl-12 col-md-12">
												<div class="row">
													<div class="col">
														<h2>비밀번호 수정하기</h2>
														<div class="card">
                                            				<div class="card-header">
                                            				
												
												<!--Password-Form Start-->
												<form id="inputform" action="changepassword.do" method="POST">
													<div class="row my-2">
														<div class="col-md-4">
															<div class="md-form">
																<i class="fas fa-lock prefix"></i> <input type="password" id="inputValidation" name="password" class="form-control validate validate-new-password" required /><label for="inputValidation" data-error="비밀번호를 조건에 맞게 입력해주세요" data-success="좋아요" style="width: 300px">새로운 비밀번호</label>
															</div>
														</div>
														<div class="col-md-6">
															<div class="alert alert-warning password-alert" role="alert">
																<ul>
																	<li class="requirements leng" style="color: black;"><i class="fas fa-check green-text"></i> <i class="fas fa-times red-text"></i> 비밀번호는 최소 6글자 이상이어야합니다.</li>
																	<li class="requirements big-letter" style="color: black;"><i class="fas fa-check green-text"></i> <i class="fas fa-times red-text"></i> 비밀번호는 대문자가 한 글자 이상 포함되어야 합니다</li>
																	<li class="requirements num" style="color: black;"><i class="fas fa-check green-text"></i> <i class="fas fa-times red-text"></i> 비밀번호는 숫자가 한 글자 이상 포함되어야 합니다.</li>
																	<li class="requirements special-char" style="color: black;"><i class="fas fa-check green-text"></i> <i class="fas fa-times red-text"></i> 비밀번호는 특수문자가 한 글자 이상 포함되어야 합니다.</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="row my-2">
														<div class="col-md-4">
															<div class="md-form">
																<i class="fas fa-lock prefix"></i><input type="password" id="cnpasswordvalidation" class="form-control validate validate-confirm-password" required /> <label for="cnpasswordvalidation" data-error="비밀번호를 조건에 맞게 입력해주세요" data-success="좋아요" style="width: 300px">비밀번호 재확인</label>
															</div>
														</div>
														<input type="button" class="btn btn-primary" id="btn" value="비밀번호 변경" />
													</div>
												</form>
												</div>
														</div>
													</div>
												</div>
												<!-- Passowrd-Form End -->
											</div>
										</div>
									</div>
								</div>
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
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
                <p>You are using an outdated version of Internet Explorer, please upgrade <br />to any of the following web browsers to access this website.</p>
                <div class="iew-container">
                    <ul class="iew-download">
                        <li>
                            <a href="http://www.google.com/chrome/">
                                <img src="assets/images/browser/chrome.png" alt="Chrome" />
                                <div>Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.mozilla.org/en-US/firefox/new/">
                                <img src="assets/images/browser/firefox.png" alt="Firefox" />
                                <div>Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com">
                                <img src="assets/images/browser/opera.png" alt="Opera" />
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.apple.com/safari/">
                                <img src="assets/images/browser/safari.png" alt="Safari" />
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                                <img src="assets/images/browser/ie.png" alt="" />
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
	<script src="./../resources/assets/js/jquery/jquery.min.js "></script>
	<script src="./../resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
	<script src="./../resources/assets/js/popper.js/popper.min.js"></script>
	<script src="./../resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="./../resources/assets/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script src="./../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
	<!-- slimscroll js -->
	<script src="./../resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
	<!-- menu js -->
	<script src="./../resources/assets/js/pcoded.min.js"></script>
	<script src="./../resources/assets/js/vertical/vertical-layout.min.js "></script>
	<!-- mdb.min.js -->
	<script src="./../resources/assets/js/mdb.min.js"></script>
	<script src="./../resources/js/password.validate.js"></script>
	<script src="./../resources/assets/js/script.js "></script>
</body>
</html>
