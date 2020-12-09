<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="like.*"%>
<%@ page import="review.*"%>
<%@ page import="user.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE HTML>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MANGOMANGO_Write_reviewPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by FreeHTML5.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="FreeHTML5.co" />

<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,400|Montserrat:400,700"
	rel="stylesheet">

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
<body>

	<%
   String userID = null;
   if(session.getAttribute("userID")!=null){
      userID=(String)session.getAttribute("userID");
   }
   
   %>
	<div class="gtco-loader"></div>
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">

			<div class="row">
				<div class="col-sm-2 col-xs-main">
					<a href="mainPage.jsp"><img src="images/logo.png" alt="  "></a>
				</div>
				<div class="col-xs-10 text-right menu-1">
					<ul>
						<li class="active"><a href="index.html"></a></li>
						<div id="right">
							<a href="WC_main.html"><img class="my-small"
								src="images/worldcup.png" alt=""></a>
							<%
                     if(userID==null){
                        
                     %>
							<a href="loginpage.jsp"><img class="my-small"
								src="images/my_icon.png" alt=""></a>

							<%
                     }else{
                  	    %>
							<a href="logoutaction.jsp"><img class="my-small"
								src="images/logout.png" alt=""></a>
							<%
                     }
                     %>
						</div>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<hr>
	<!-- TOP footer -->
	<div class="gtco-container">
		<br>
		<%int fshopID= 1;%>
		<form method="post" id="write-form" action="writeReviewAction.jsp?fshopID=<%=fshopID%>">
		
			<h1 align="center">
				<b>리뷰 &nbsp&nbsp작성하기
			</h1>
			<img id="addPic" src="images/pen.png" alt=""><br>
			<br>&nbsp
			<hr>
			<textarea name="bbsContent" placeholder="리뷰를 작성해주세요."></textarea>
			<br>
			<br>
			<br>
			<br>
			<div class="like">
				<h2 align="center">
					<b>평점 남기기
				</h2>
				<hr>
				<br>
				<input type="radio" id="age1" name="star" value="1"><label for="age1">1.0</label>
  <input type="radio" id="age2" name="star" value="2"><label for="age2">2.0</label> 
  <input type="radio" id="age3" name="star" value="3"><label for="age3">3.0</label>
  <input type="radio" id="age4" name="star" value="4"><label for="age4">4.0</label> 
  <input type="radio" id="age5" name="star" value="5"><label for="age5">5.0</label>
				<br>
				<br>
				<br>
				<br>
				<br>


				<div id="submit" onClick="document.forms['write-form'].submit();">
					<div class="button_base b03_skewed_slide_in">
						<div>Submit!!</div>
						<div></div>
						<div>Are you sure?</div>
					</div>
					<br>
				</div>
				<br>
			</div>
		</form>
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
				<p>동국대학교 인근 음식점을 검색하고 관심등록과 리뷰를 작성할 수 있으며 음식점에 관한 정보를 얻을 수 있는
					홈페이지 입니다.</p>
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
