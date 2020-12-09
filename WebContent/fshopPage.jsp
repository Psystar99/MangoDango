<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE HTML>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MANGOMANGO_cafePage</title>
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
							<a href="myPage.jsp"><img class="my-small"
								src="images/my_icon.png" alt=""></a>
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
		<img class="cafe-image" src="images/산쪼메.jpg"> <img
			class="cafe-image" src="images/산쪼메.jpg"> <img
			class="cafe-image" src="images/산쪼메.jpg"> <br> <br> <br>
		<font size=15px>산쪼메&nbsp&nbsp</font> <img src="images/Fstar.png"><img
			src="images/Fstar.png"><img src="images/Fstar.png"><img
			src="images/Estar.png"><img src="images/Estar.png"> <font
			size=5px>3</font>
		<div class="cafe-icon">
			<a href="writeReviewPage.html"><img class="icon"
				src="images/pen.png"></a>&nbsp&nbsp<img class="icon"
				src="images/zzim.png">
		</div>
		<hr>
		<div id="cafe-info">
			음식점 이름 : 산쪼메<br> <br> 음식점 주소 : 서울 중구 서애로1길 26<br> <br>
			음식점 전화번호 : 02-2273-0504<br> <br> 음식종류 : 일식<br> <br>

		</div>
		<div id="cafe-map" align="center">


			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7237c9aa55b84c8dfeefce0eb3f68222"></script>
			<script>
var mapContainer = document.getElementById('cafe-map'); //지도를 담을 영역의 DOM 레퍼런스
var mapOption = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.56124, 126.99956), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};
var map = new kakao.maps.Map(mapContainer, mapOption);

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.56124, 126.99956); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
var iwContent = '<div style="padding:5px;font-size:12px;"><b>산쪼메</b></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(37.56124, 126.99956); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});

//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
		</div>

		<font size=15px>리뷰 (3)</font>
		<hr>
		<div class="cafe-review">
			<a href="othersPage.html"><img class="user-image"
				src="images/mypage_icon.png"></a>
			<div id="cafe-review-text-box">
				<font size=4px>2020-12-06 &nbsp 16:27</font>
				<div id="review-star">
					<img src="images/Fstar.png"><img src="images/Fstar.png"><img
						src="images/Fstar.png"><img src="images/Estar.png"><img
						src="images/Estar.png">
				</div>
				<br> <br>
				<div id="cafe-review-text">무난무난무난! 그냥 가끔 라면 먹고 싶을 때~~~ 돌 신기방기</div>

			</div>
		</div>
		<br>
		<div class="cafe-review">
			<a href="남의페이지.html"><img class="user-image"
				src="images/mypage_icon.png"></a>
			<div id="cafe-review-text-box">
				<font size=4px>2020-12-02 &nbsp 12:14</font>
				<div id="review-star">
					<img src="images/Fstar.png"><img src="images/Fstar.png"><img
						src="images/Fstar.png"><img src="images/Fstar.png"><img
						src="images/Fstar.png">
				</div>
				<br> <br>
				<div id="cafe-review-text">너무너무 맛있다! 역시 충무로 원탑!</div>

			</div>
		</div>
		<br>
		<div class="cafe-review">
			<a href="남의페이지.html"><img class="user-image"
				src="images/mypage_icon.png"></a>
			<div id="cafe-review-text-box">
				<font size=4px>2020-11-16 &nbsp 14:44</font>
				<div id="review-star">
					<img src="images/Fstar.png"><img src="images/Estar.png"><img
						src="images/Estar.png"><img src="images/Estar.png"><img
						src="images/Estar.png">
				</div>
				<br> <br>
				<div id="cafe-review-text">이딴걸 왜 돈주고 먹음? 이해가 안됨! 그래서 나는 내가 이해가
					안됨! ㅈㅁㅌㄱㄹ >_< 민트초코 짱짱맨</div>

			</div>
		</div>
		<br>

	</div>




	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!— jQuery Easing —>
	<script src="js/jquery.easing.1.3.js"></script>
	<!— Bootstrap —>
	<script src="js/bootstrap.min.js"></script>
	<!— Waypoints —>
	<script src="js/jquery.waypoints.min.js"></script>
	<!— Carousel —>
	<script src="js/owl.carousel.min.js"></script>

	<!— Main —>
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
<!— END footer —>

</div>
</html>