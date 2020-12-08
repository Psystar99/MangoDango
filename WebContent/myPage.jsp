<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE HTML>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>MANGOMANGO_MyPage</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Merriweather:300,400|Montserrat:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<div class="gtco-loader"></div>
	
	<div id="page">

		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-sm-2 col-xs-main">
						<a href="mainPage.jsp"><img src = "images/logo.png" alt = "  "></a>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.html"></a></li>
							<div id = "right">
							<a href = "WC_main.html"><img class = "my-small" src = "images/worldcup.png" alt = ""></a>
							<a href = "myPage.jsp"><img class = "my-small" src = "images/my_icon.png" alt = ""></a>
							</div>
							
							
						</ul>
						
						
					</div>
				</div>
				
			</div>
		</nav><hr>
		<!-- TOP footer -->
		
		<div class="gtco-container">
			<div class = "mypage_box">
				<img src = "images/mypage_icon.png" alt = "">
				
				<div id = "div_text">
					이름 : 윤희창 <br>
					닉네임 : HeeChang <br>
					전화번호 : 010 - 2224 - 6528 <br>
					성별 : 남성 <br>
					선호지역 : 충무로 역<br>
					
				</div>
			</div>
		</div>
		<div id = "div_mypage">
			<font size = "6">내가 찜한 음식점 (3)</font><br><br>
				<div id = "pickbox">
					<a href = "fshopPage.html"><img class = "max-small" src = "images/한솥.jpg"></a>
					<div id = "pickbox-text">
						음식점 이름 : 한솥 도시락<br>
						음식점 위치 : 서울 중구 서애로1길 26<br>
						음식점 전화번호 : 02-2272-2224<br>
						음식점 종류 : 도시락, 컵밥
					</div>
				</div><br>
				<div id = "pickbox">
					<a href = "음식점 페이지"><img class = "max-small" src = "images/산쪼메.jpg"></a>
					<div id = "pickbox-text">
						음식점 이름 : 산쪼메 동국대점<br>
						음식점 위치 : 서울 중구 서애로1길 26<br>
						음식점 전화번호 : 02-2273-0504<br>
						음식점 종류 : 일식, 일본식 라면
					</div>
					
				</div><br>
				<div id = "pickbox">
					<a href = "음식점 페이지"><img class = "max-small" src = "images/산타돈부리.jpg"></a>
					<div id = "pickbox-text">
						음식점 이름 : 산타돈부리<br>
						음식점 위치 : 서울 중구 서애로 19<br>
						음식점 전화번호 : 0507-1348-8151<br>
						음식점 종류 : 일식
					</div>
				</div><br>
			
		</div>
		<div id = "div_mypage2">
			<font size = "6">내가 쓴 리뷰 (3)</font><br><br>
			<div id = "pickbox">
				<a href = "cafePage.html"><img class = "max-small" src = "images/한솥.jpg"></a>
				<div id = "review-text">
					<font size = "4px"><b>한솥 도시락</b></font><br>
					갓성비 최고!! 언제 먹어도 어머니가 해주시는 맛!! 후회가 절대 없는 맛!! <br><br>
					<img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Fstar.png">
					<img class = "change-small" src = "images/cancel.png">
					<a href = "changeReviewPage.html"><img class = "change-small" src = "images/pen.png"></a>
					
					
				</div>
			</div><br>
			<div id = "pickbox">
				<a href = "음식점 페이지"><img class = "max-small" src = "images/산쪼메.jpg"></a>
				<div id = "review-text">
					<font size = "4px"><b>산쪼메 동국대점</b></font><br>
					면요리가 땡기면 자연스레 가는 산쪼메인데 요즘 맛이 조금 변한 것 같아요...ㅠㅠ<br><br>
					<img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Estar.png"><img src = "images/Estar.png"><img src = "images/Estar.png">
					<img class = "change-small" src = "images/cancel.png">
					<a href = "changeReviewPage.html"><img class = "change-small" src = "images/pen.png"></a>
					
				</div>
			</div><br>
			<div id = "pickbox">
				<a href = "음식점 페이지"><img class = "max-small" src = "images/산타돈부리.jpg"></a>
				<div id = "review-text">
					<font size = "4px"><b>산타돈부리</b></font><br>
					아 진짜 여기 너무 맛있어요ㅠㅠ 겉바속촉의 대명사입니다 정말! 알바생분도 친절!<br><br>
					<img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Fstar.png"><img src = "images/Estar.png">
					<img class = "change-small" src = "images/cancel.png">
					<a href = "changeReviewPage.html"><img class = "change-small" src = "images/pen.png"></a>
					
				</div>
			</div><br>
		</div>
		
		
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>

<footer id="gtco-footer" class="gtco-section" role="contentinfo">
			<div class="gtco-container">
				<div class="row row-pb-md">
					<div class="col-md-4 gtco-widget gtco-footer-paragraph">
						<h3>Web Programming Project</h3>
						<p>동국대학교 인근 음식점을 검색하고 관심등록과 리뷰를 작성할 수 있으며 음식점에 관한 정보를 얻을 수 있는 홈페이지 입니다.</p>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6 gtco-footer-link"></div>
							<div class="col-md-6 gtco-footer-link">
								<h3>Who makes</h3>
								<ul class="gtco-list-link">
									<li><a href="#">윤희창</a></li>
									<li><a href="#">심정용</a></li>
									<li><a href="#">박소영</a></li>
									<li><a href="#">이원정</a></li>
									<li><a href="#">임성혁</a></li>
									<li><a href="#">여은동</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</footer>
		<!-- END footer -->

	</div>
</html>

