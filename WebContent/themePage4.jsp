<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>MANGOMANGO_MainPage</title>
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
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
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
	
	<script>
	// img 출력
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img1 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img1.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[22].images+ ">" + '<br>')
			});
			$('#img1').html(img1.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img2 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img2.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[23].images+ ">" + '<br>')
			});
			$('#img2').html(img2.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img3 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img3.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[24].images+ ">" + '<br>')
			});
			$('#img3').html(img3.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img4 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img4.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[25].images+ ">" + '<br>')
			});
			$('#img4').html(img4.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img5 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img5.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[26].images+ ">" + '<br>')
			});
			$('#img5').html(img5.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img6 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img6.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[27].images+ ">" + '<br>')
			});
			$('#img6').html(img6.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img7 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img7.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[28].images+ ">" + '<br>')
			});
			$('#img7').html(img7.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var img8 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				img8.push("<img style = 'width:100%; height:auto;' src ="+ item.Info[29].images+ ">" + '<br>')
			});
			$('#img8').html(img8.join(''));
		}); 
	});
	
	// info 출력
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info1 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info1.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[1].Index + ". " + item.Info[22].Name + '</h3>' + '</a>');
				info1.push('종류 : ' + item.Info[22].Category+ '<br>');
				info1.push('주소 : ' + item.Info[22].Address+ '<br>');
				info1.push('홈페이지 : ' + item.Info[22].homepage + '<br>');
				info1.push('전화번호 : ' + item.Info[22].phoneNumber + '<br><br>');
				info1.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info1').html(info1.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info2 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info2.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[2].Index + ". " + item.Info[23].Name + '</h3>' + '</a>');
				info2.push('종류 : ' + item.Info[23].Category+ '<br>');
				info2.push('주소 : ' + item.Info[23].Address+ '<br>');
				info2.push('홈페이지 : ' + item.Info[23].homepage + '<br>');
				info2.push('전화번호 : ' + item.Info[23].phoneNumber + '<br><br>');
				info2.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info2').html(info2.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info3 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info3.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[3].Index + ". " + item.Info[24].Name + '</h3>' + '</a>');
				info3.push('종류 : ' + item.Info[24].Category+ '<br>');
				info3.push('주소 : ' + item.Info[24].Address+ '<br>');
				info3.push('홈페이지 : ' + item.Info[24].homepage + '<br>');
				info3.push('전화번호 : ' + item.Info[24].phoneNumber + '<br><br>');
				info3.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info3').html(info3.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info4 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info4.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[4].Index + ". " + item.Info[25].Name + '</h3>' + '</a>');
				info4.push('종류 : ' + item.Info[25].Category+ '<br>');
				info4.push('주소 : ' + item.Info[25].Address+ '<br>');
				info4.push('홈페이지 : ' + item.Info[25].homepage + '<br>');
				info4.push('전화번호 : ' + item.Info[25].phoneNumber + '<br><br>');
				info4.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info4').html(info4.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info5 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info5.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[5].Index + ". " + item.Info[26].Name + '</h3>' + '</a>');
				info5.push('종류 : ' + item.Info[26].Category+ '<br>');
				info5.push('주소 : ' + item.Info[26].Address+ '<br>');
				info5.push('홈페이지 : ' + item.Info[26].homepage + '<br>');
				info5.push('전화번호 : ' + item.Info[26].phoneNumber + '<br><br>');
				info5.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info5').html(info5.join(''));
		}); 
	});

	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info6 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info6.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[6].Index + ". " + item.Info[27].Name + '</h3>' + '</a>');
				info6.push('종류 : ' + item.Info[27].Category+ '<br>');
				info6.push('주소 : ' + item.Info[27].Address+ '<br>');
				info6.push('홈페이지 : ' + item.Info[27].homepage + '<br>');
				info6.push('전화번호 : ' + item.Info[27].phoneNumber + '<br><br>');
				info6.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info6').html(info6.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info7 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info7.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[7].Index + ". " + item.Info[28].Name + '</h3>' + '</a>');
				info7.push('종류 : ' + item.Info[28].Category+ '<br>');
				info7.push('주소 : ' + item.Info[28].Address+ '<br>');
				info7.push('홈페이지 : ' + item.Info[28].homepage + '<br>');
				info7.push('전화번호 : ' + item.Info[28].phoneNumber + '<br><br>');
				info7.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info7').html(info7.join(''));
		}); 
	});
	
	$(document).ready(function() { 
		$.getJSON('./json/food.json', function(data) { 
			var info8 = []; // 받아올 데이터를 저장할 배열 선언
			$.each(data, function(index, item) { 
				info8.push('<a href = "한솥.jsp" style = "text-decoration:none; ">' + '<h3>' + item.Info[8].Index + ". " + item.Info[29].Name + '</h3>' + '</a>');
				info8.push('종류 : ' + item.Info[29].Category+ '<br>');
				info8.push('주소 : ' + item.Info[29].Address+ '<br>');
				info8.push('홈페이지 : ' + item.Info[29].homepage + '<br>');
				info8.push('전화번호 : ' + item.Info[29].phoneNumber + '<br><br>');
				info8.push('<a href = "한솥.jsp" style = "text-decoration:none; text-align:right;">더보기..</a>');
			});
			$('#info8').html(info8.join(''));
		}); 
	});
	</script>
</head>

<body>	
	<div class="gtco-loader"></div>
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				<div class="row">
					<div class="col-sm-2 col-xs-main">
						<a href="main page.jsp"><img src = "images/logo.png" alt = "  "></a>
					</div>
					<div class="col-xs-10 text-right menu-1">
                  		<ul>
                    		<li class="active"><a href="index.html"></a></li>
                     		<div id = "right">
                        		<a href = "WC_main.html"><img class = "my-small"src = "images/worldcup.png" alt = ""></a>
                        		<a href = "myPage.jsp"><img class = "my-small" src = "images/my_icon.png" alt = ""></a>
                     		</div>
                  		</ul>
               		</div>
				</div>
			</div>
		</nav>
		
		<header>
			<div style="padding-bottom: 10px; background-color: #d6d2d2">
				<br><br>
				<%Date now = new Date(); %>
				<center>
				<p><%=now %></p>
				<h1>한국 사람이라면 한식!</h1><br>
				<h5>무난하지만 든든하다! 한식 맛집!</h5><br>
				</center>
			</div>
		</header>
		
		<br><br>
		<div style = "width:90%;">
			<div id = "img1" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info1" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img2" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info2" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img3" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info3" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img4" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info4" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img5" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info5" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img6" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info6" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img7" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info7" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
		<div style = "width:90%;">
			<div id = "img8" style = "width:40%; float:left; padding-left:70px;"></div>
			<div id = "info8" style = "width:60%; float:left; padding-left:20px;"></div>
		</div><br>
		<p style = "clear:left;">
		<hr style = "align:center; width:90%;">
		
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
</body>
</html>