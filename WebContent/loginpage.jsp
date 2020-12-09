<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>로그인 페이지</title>
	<link rel="stylesheet" href="css/loginpage.css">
</head>
<body>
	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<a href="mainPage.jsp" target="_blank" title="맛집추천사이트 메인"><img src="images/logo.png"></a>
			</div>
		</header>
		<form method="post" action="loginaction.jsp" id="login">
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="Username" type="text" id="userID" name="userID"></input>
			</div>
			<span class="error_next_box"></span>
			<div class="login-input-wrap password-wrap">
				<input placeholder="Password" type="password" id="userPassword" name="userPassword"></input>
			</div>
			<span class="error_next_box"></span>
			<div class="login-button-wrap">
				<button>Sign in</button>
			</div>
		</section>
		</form>
			<p class="forget-msg"><a href="serviceAgreement.html">회원가입</a></p>
		<footer>
			<div class="copyright-wrap">
			<span>	Copyright © MangoMango All Rights Reserved.</span>
			</div>
		</footer>
		</div>
	</div>
</body>