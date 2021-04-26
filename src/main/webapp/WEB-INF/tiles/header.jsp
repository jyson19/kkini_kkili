<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	
</head>
<body>
	<header id="header">
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/resources/logo/kk-logo-black.png" alt="끼니끼리로고" height="70" width="auto"/></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> 메뉴
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
				<!-- <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li> -->
				<li class="nav-item"><a href="${pageContext.request.contextPath}/notice/list.do" class="nav-link">공지사항</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/main/ct.do" class="nav-link">채용</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/contact/list.do" class="nav-link">컨택조회</a></li>
				<!-- <li class="nav-item"><a href="hotel.html" class="nav-link">프로필조회</a></li> -->
				<li class="nav-item"><a href="blog.html" class="nav-link">프로필조회</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/sign/signin.do" class="nav-link">로그인</a></li>
				<li class="nav-item cta"><a href="auth-sign-up.html" class="nav-link"><span>가입하기</span></a></li>
				</ul>
			</div>
			</div>
		</nav>
	</header>
</body>    
