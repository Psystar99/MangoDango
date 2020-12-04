<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%
	String topic = (String)request.getAttribute("topic"); //TC, TR
	String result = (String)request.getAttribute("result");
	
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/main.css?version=1" />
<script type="text/javascript">
	var ques1 = "지금은 자극적인 음식이 좀 더 먹고싶나요?";
	var ques2 = "오늘 식사에는 돈을 얼마나 사용하는게 좋을까요?";
	var ques3 = "이번 식사는 혼자하시나요, 다른 분들과 함께하시나요?";
	var ques4 = "지금 여러분이 드시고 싶은 음식은 한식인가요?";
	var ques5 = "이번에 가게될 음식점은 조용한 곳이 좋을까요?";
	//00101
	var L_answer1 = ("오늘은 자극적인 음식이 안땡겨..");
	var L_answer2 = ("지금 돈 많아서 상관 없어~ 아무거나~");
	var L_answer3 = ("지금은 혼자 먹을꺼야!");
	var L_answer4 = ("향신료 가득한 다른 나라 음식으로 할래!");
	var L_answer5 = ("나는 복작복작한 곳도 나쁘지 않아!");
	var R_answer1 = ("맵고 짜고 자극적인거!!");
	var R_answer2 = ("나의 투철한 절약정신으로 8000원 이하만 가능해!");
	var R_answer3 = ("친구들이랑 다같이 먹을꺼야");
	var R_answer4 = ("한국인은 밥심이지! 한식으로 할래!");
	var R_answer5 = ("나는 조용한 곳에서 식사하고 싶어!");
	
	var img = "image/TR/TR_q";
	
	var topic = "<%=topic%>";
	var result = "<%=result%>";
	var num = 1;
	var select = "*";
	
	// 왼쪽 버튼
	function left_click(){
		select="0";
	}
	// 오른쪽 버튼
	function right_click(){
		select="1"
	}
	// 이전 질문 버튼
	function back(){
		if(num==1){
			result = result.concat(select);
			location.href="./ToResult?result="+result;
		}else{
			result = result.slice(0,-1);	
			num--;
			select="*";
			var imgL = img+num+"_L.jpg";
			var imgR = img+num+"_R.jpg";
			document.getElementById("num").innerHTML = num;
			document.getElementById("question").innerHTML = eval("ques"+num);
			document.getElementById("left").value = eval("L_answer"+num);
			document.getElementById("right").value = eval("R_answer"+num);
			document.getElementById("leftpic").src = imgL;
			document.getElementById("rightpic").src = imgR;
		}
	}
	// 다음 질문 버튼
	function next(){
		if(select == "*"){
			alert("버튼을 눌러 답변을 선택하십시오")
		}else{
			if(num==5){
				result = result.concat(select);
				location.href="./ToResult?result="+result;
			}else{
				result = result.concat(select);
				num++;
				select = "*";
				var imgL = img+num+"_L.jpg";
				var imgR = img+num+"_R.jpg";
				var bbi_l= 'url('+imgL+')';
				var bbi_r= 'url('+imgR+')';
				document.getElementById("ques_num").innerHTML = num;
				document.getElementById("question").innerHTML = eval("ques"+num);
				document.getElementById("left").innerHTML = eval("L_answer"+num);
				document.getElementById("right").innerHTML = eval("R_answer"+num);
				document.getElementById("mozi_l").style.backgroundImage = bbi_l;
				document.getElementById("mozi_r").style.backgroundImage = bbi_r;
				
				
			}
		}
		
	}
</script>
<title>TR</title>
</head>
<body>
<div id="wrapper">
	<!-- logo -->
	<a href="WC_main.html">
		<section id="cta" class="main special">
			<span class="icon fa-diamond major"></span>
		</section></a>
		<!-- question -->
		<div id="ques_num" style="display:none">1</div>
		<section id="question" class="main">
			<b id=question>지금은 자극적인 음식이 좀 더 먹고싶나요?
		</b></section>
		<!-- answer -->
		<section class="main items">
		
		<article class="item" onClick="left_click()">
				 <header><a id="mozi_l"><img src="image/TR/TR_q1_L.jpg"/>
				</a></header>
				
					<b><p id="left">
						오늘은 자극적인 음식이 안땡겨..
					</p></b>
				
			</article>
		<article class="item" onClick="right_click()">
				 <header><a id="mozi_r"><img src="image/TR/TR_q1_R.jpg"/>
				</a></header>
				
					<b><p id="right">
						맵고 짜고 자극적인거!!
					</p></b>
				
			</article>
			
	</section>
	
	<footer id="footer">
			<ul class="actions">

				<li><input type="button" value="back" class="submit_btn"
					onClick="back()"></li>
				<li><input type="button" value="next" class="submit_btn"
					onClick="next()"></li>
			</ul>


		</footer>
	</div>
	<!-- Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/skel.min.js"></script>
	<script src="js/util.js"></script>
	<script src="js/WC_main.js"></script>
</body>
</html>