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
	var ques1 = "빛이 잘 드는 곳을 좋아하시나요?";
	var ques2 = "공간이 넓은 곳이 좋으신가요, 아늑한 곳이 좋으신가요?";
	var ques3 = "오늘은 카페에 혼자가시나요?";
	var ques4 = "카페의 조용함을 즐기시고 싶으신가요?";
	
	var L_answer1 = ("채광 좋은 밝은 곳으로 가고 싶어!");
	var L_answer2 = ("나는 넓은 곳이 좋아!");
	var L_answer3 = ("오늘은 혼자 카페를 즐길래");
	var L_answer4 = ("아니야! 복작복작한 카페도 좋아");
	var R_answer1 = ("나는 어두운 곳으로 갈래!");
	var R_answer2 = ("나는 아늑한 곳이 좋아!");
	var R_answer3 = ("오늘은 친구랑 갈꺼야!");
	var R_answer4 = ("조용하게 카페를 즐기는게 낫겠어");
	
	var img = "image/TC/TC_q";
	
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
			location.href="WC_Result.jsp?result="+result;;
		}else{
			result = result.slice(0,-1);	
			num--;
			select="*";
			var imgL = img+num+"_L.jpg";
			var imgR = img+num+"_R.jpg";
			document.getElementById("ques_num").innerHTML = num;
			document.getElementById("question").innerHTML = eval("ques"+num);
			document.getElementById("left").innerHTML = eval("L_answer"+num);
			document.getElementById("right").innerHTML = eval("R_answer"+num);
			document.getElementById("leftpic").src = imgL;
			document.getElementById("rightpic").src = imgR;
		}
	}
	// 다음 질문 버튼
	function next(){
		if(select == "*"){
			alert("버튼을 눌러 답변을 선택하십시오")
		}else{
			if(num==4){
				result = result.concat(select);
				location.href="WC_Result.jsp?result="+result;
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
<title>TC</title>
</head>
<body>
<div id="wrapper">
	<!-- logo -->
	<a href="WC_main.html">
		<section id="cta" class="main special">
			<span class="icon fa-diamond major"></span>
		</section>
		<!-- question -->
		<div id="ques_num" style="display:none">1</div>
		
		<section id="question" class="main">
			<b id=question>지금은 자극적인 음식이 좀 더 먹고싶나요?
		</b></section></a>
		<!-- answer -->
		<section class="main items">
		
		<article class="item" onClick="left_click()">
				 <header><a id="mozi_l"><img src="image/TC/TC_q1_L.jpg"/>
				</a></header>
				
					<b><p id="left">
						채광 좋은 밝은 곳으로 가고 싶어!</p></b>
				
			</article>
		<article class="item" onClick="right_click()">
				 <header><a id="mozi_r"><img src="image/TC/TC_q1_R.jpg"/>
				</a></header>
				
					<b><p id="right">나는 어두운 곳으로 갈래!</p></b>
				
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