<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판</title>
<script>
function registerCheckFunction(){
	var userID=$('#userID').val();
	$.ajax({
		type:'POST',
		url:'./UserRegisterCheckServlet',
		data:{userID : userID},
		success : function(result){	
			if(result==1){//사용할 수 있는 경우
				alert("DB함수에서 받아온값: "+result+" :아이디는 사용가능합니다");
			}
			else{
				alert("DB함수에서 받아온값: "+result+" :다른 사람이 쓰는 중!");
			}
		
		}
	})
}
</script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-examlpe-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
            <a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li><a href="main.jsp">메인</a></li>
            <li><a href="bbs.jsp">게시판</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
            <a href="#" class="dropdown-toggle"
                data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">접속하기<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="active"><a href="login.jsp">로그인</a></li>
                    <li><a href="join.jsp">회원가입</a></li>
            </ul>
            </li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class="jumbotron" style="padding-top: 20px;">
        <form method="post" action="joinAction.jsp">
        <h3 style="text-align:center;">회원가입 화면</h3>
       <tr>
					<td style="width:130px;"><h5>아이디<font class="need">*</font></h5></td>
					<td><input class="form-control" type="text" id="userID" name="userID" maxLength="20"  placeholder="아이디를 입력해주세요."></td>
					<td style="width:110px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복 체크</button></td>
				</tr>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
        </div>

        <div class="form-group">
            <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
        </div>
        <input type="submit" class="btn btn-primary form-control" value="회원가입">
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
        	
</body>
</html>