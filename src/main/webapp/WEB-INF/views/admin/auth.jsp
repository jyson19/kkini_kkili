<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>끼니끼리 관리자 인증 확인</title>
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
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/icofont/css/icofont.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css">

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
            
           <!-- 헤더  -->
            <nav class="navbar header-navbar pcoded-header"><%@include file ="header.jsp" %></nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                
                 <!-- 사이드바  -->
                    <nav class="pcoded-navbar"><%@include file ="nav.jsp" %></nav>
                    
                    
                    <div class="pcoded-content">
                        
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
							
<div class="card">
    <div class="card-header">
        <h3>프로필 인증</h3>
        <span>프로필을 자세히 보고   <code>인증</code> 완료 부탁드립니다</span>
    </div>
    <div class="card-block">
        <form>
        <h4 class="sub-title">NO.${host.MEMBER_ID}</h4>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">이름</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="${host.NAME}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">이메일</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="${host.EMAIL}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">회원등급</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="등급 : ${host.AUTH}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">연락처</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${host.TEL}" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">소속</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${host.COMPANY}" name='company' readonly>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">학교</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${host.UNI}" name='uni' readonly>
                </div>
            </div>
                                                
<div class="form-group row">
    <label class="col-sm-2 col-form-label">프로필 사진</label>
    <div class="col-sm-10">
        <input value="${host.HOST_PIC}" class="form-control" name='pic' readonly>
    </div>
</div>
<div class="form-group row">
    <label class="col-sm-2 col-form-label"></label>
    <div class="col-sm-10">
        <div class="form-control-static">
        </div>
    </div>
</div>
<div class="form-group row">
    <label class="col-sm-2 col-form-label">인증 자료</label>
    <div class="col-sm-10">
        <input value="${host.AUTH_FILE}" class="form-control" name='file' required readonly>
        
    </div>
</div>
<div class="form-group row">
    <label class="col-sm-2 col-form-label"></label>
    <div class="col-sm-10">
        <div class="form-control-static">
        </div>
    </div>
</div>
<div class="form-group row">
    <label class="col-sm-2 col-form-label">내용</label>
    <div class="col-sm-10">
        <textarea name='content' rows="10" cols="5" class="form-control" required readonly>${host.CONTENT}</textarea>
    </div>
</div>
  <a href="pageMoveUpdate.do"><button id="confirm" type="button" class="btn btn-primary btn-md btn-blocktext-center m-b-20 float-right ml-3" >등업하기</button></a>
</form>                                                            
  <form method="post" action="main.do">
  <button id="confirm" type="submit" class="btn btn-primary btn-md btn-blocktext-center m-b-20 float-right" >거절</button>
  </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page body end -->
                                </div>
                            </div>
                            <!-- Main-body end -->
                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

    <!-- Custom js -->
    <script src="./../resources/assets/js/pcoded.min.js"></script>
    <script src="./../resources/assets/js/vertical/vertical-layout.min.js"></script>
    <script src="./../resources/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/script.js"></script>
</body>

</html>
