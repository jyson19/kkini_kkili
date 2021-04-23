<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>끼니끼리 회원가입</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->

      <!-- 한글 관련 css 적용 -->
	<link rel="stylesheet" href="./../resources/css/korean.css">
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="Codedthemes" />
      <!-- Favicon icon -->

      <link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/icofont/css/icofont.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">
  </head>

  <body themebg-pattern="theme1">

<!-- 헤더 -->
	<%@include file ="/WEB-INF/tiles/header.jsp" %>
	<!-- 헤더 종료 -->

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

  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <form id="registerForm" class="md-float-material form-material">
                        <!-- <div class="text-center">
                            <img src="assets/images/logo.png" alt="logo.png">
                        </div> -->
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">회원가입</h3>
                                    </div>
                                </div>
                                <!-- 이름 -->
                                <div class="form-group form-primary">
                                    <input type="text" id="name" name="user-name" class="form-control required" required>
                                    <span class="form-bar"></span>
                                    <label class="float-label">이름</label>
                                </div>
                                <!-- 이메일 입력 -->
                                <div class="form-group form-primary">
                                    <input type="text" id="email" name="email" class="form-control required email" required email>
                                    <span class="form-bar"></span>
                                    <label class="float-label">이메일(exam@kkinikkili.com)</label>
                                </div>
                                
                                <!-- 이메일 중복확인 -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <span><button id="check" type="button" class="btn btn-primary btn-md btn-blocktext-center m-b-20" disabled="disabled">중복 확인</button></span>
                                        <input type="text" class="form-control col-md-8 f-right" placeholder="중복 여부 확인" readonly>
                                    </div>
                                </div>
                                
                                <!-- 이메일 인증 -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <span><button id="confirm" type="button" class="btn btn-primary btn-md btn-blocktext-center m-b-20">이메일 인증</button></span>
                                        <input type="text" class="form-control col-md-8 f-right" placeholder="인증키 입력">
                                    </div>
                                </div>
                                
                                

                                <div class="form-group form-primary">
                                    <input type="tel" id="tel" name="tel" class="form-control digits" id="tel" required>
                                    <span class="form-bar"></span>
                                    <label class="float-label">전화번호 11자리</label>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input id="password" type="password" name="password" class="form-control equalTo" minlength="6" maxlength="12" required >
                                            <span class="form-bar"></span>
                                            <label class="float-label">비밀번호</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input id="cpassword" type="password" name="confirm-password" class="form-control equalTo" required>
                                            <span class="form-bar"></span>
                                            <label class="float-label">비밀번호 재확인</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse"> 이용약관을 읽고 동의합니다 <a href="${pageContext.request.contextPath}/main/term-and-policy.do" target="_blank"> (내용보기) </a></span>
                                            </label>
                                        </div>
                                    </div>

                                    <!-- <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Send me the <a href="#!">Newsletter</a> weekly.</span>
                                            </label>
                                        </div>
                                    </div> -->

                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="sumbit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">회원가입하기</button>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <p class="text-inverse text-left m-b-0">이미 아이디가 있으신가요?</p>
                                        <p class="text-inverse text-left"><a href="${pageContext.request.contextPath}/main/login.do"><b>로그인하기</b></a></p>
                                    </div>
                                    <!-- <div class="col-md-2">
                                        <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
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
<script type="text/javascript" src="./../resources/assets/js/common-pages.js"></script>
<!-- 비밀번호 유효성 검사 라이브러리 -->
<script type="text/javascript" src="./../resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="./../resources/js/signValidate.js"></script>


</body>

</html>


