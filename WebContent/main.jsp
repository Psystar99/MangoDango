<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Pragma" content="no-cache">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
<title>:: IFARI ::</title>
<meta name="keywords" content="ifari">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link href="css/styles.css" rel="stylesheet" type="text/css">

<link href="css/sns.css" rel="stylesheet" type="text/css">
<!-- 하단 고정창 -->
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<!-- 상단 고정창 로고 조금 빠져나옴 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('.drop').hover(function() {
			$('.sub_menu').show();
		}, function() {
			$('.sub_menu').hide();
		});
	});
</script>

<style>
.showandhide {
	display: none;
}
</style>


<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-media.js"></script>
</head>
<!-- body시작 -->
<body data-gr-c-s-loaded="true">
	<div id="wrapper">
		<!-- div #wrapper 맨위 직사각형 -->
		<div class="container clearfix">
			<div class="main">


				<div id="bg">
					<!-- 전체 -->


					<div class="header clearfix">
						<!-- 상단 고정창  -->

						<div class="divide a">
							<!-- 메뉴 왼쪽 코드 시작 -->

							<%
								String userID = null;
								if (session.getAttribute("userID") != null) {
									userID = (String) session.getAttribute("userID");
								}
							%>
							<%
								if (userID == null) {//로그인을 안 한 경우
							%>
							<input type="checkbox" id="toggle"> <label for="toggle"
								class="toggle" onclick=""></label>
							<ul class="menu">
								<!-- 메뉴버튼들: 아래 li는 하나씩 -->
								<li><a href="login.jsp">Log in</a></li>
								<li><a href="joinus_agree.jsp">Join us</a></li>
							</ul>
							<%
								} else {//로그인을 한 경우
							%>
							<input type="checkbox" id="toggle"> <label for="toggle"
								class="toggle" onclick=""></label>
							<ul class="menu">
								<!-- 메뉴버튼들: 아래 li는 하나씩 -->
								<li><a href="logoutAction.jsp">Log out</a></li>
							</ul>
							<%
								}
							%>
							<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
							<script src="js/bootstrap.js"></script>
						</div>
						<div class="divide b">
							<a href="main.jsp">Ifari</a>
						</div>
						<div class="divide c">
							<!-- 메뉴버튼들 -->
							<input type="checkbox" id="toggle"> <label for="toggle"
								class="toggle" onclick=""></label>
							<ul class="menu" id="dropdown">
								<!-- 메뉴버튼들: 아래 li는 하나씩 -->


								<li class="drop"><a href="Gallery_main.jsp">Gallery</a>
									<ul class="sub_menu" style="display: none;">

										<li><a href="gallery_read_video.jsp"
											style="background-color: #white; color: #6ac48e;">Video</a></li>
									</ul></li>
								<li><a href="About.jsp">About</a></li>
								<li><a href="bbs.jsp">Letter</a></li>
								<li><a href="Schedule.jsp">Schedule</a></li>
							</ul>
						</div>
					</div>
					<!-- End of Header -->
					<div id="dktnq"
						></div>
					<!-- 로고 -->
					<!-- End of Navigation -->
					<section>
						<div id="sect-main"></div>
					</section>
				</div>
				<!-- End of Header -->

			</div>
			<!--bg-->



		</div>
		<!-- main-->
	</div>
	<!--container-->
	<!--wrapper-->

</body>

<span class="gr__tooltip"> <span class="gr__tooltip-content"></span>
	<i class="gr__tooltip-logo"></i> <span class="gr__triangle"></span>
</span>
</html>