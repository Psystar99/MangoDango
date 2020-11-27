<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.*"%>
<%@ page import="like.*"%>
<%@ page import="review.*"%>
<%@ page import="user.*"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
//sresponse.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DAO확인</title>
</head>
<body>
	<hr>
	UserDAO 테스트
	<%
		//테스트 때마다 매번 새로운 값으로!
	UserDTO testUser = new UserDTO();
	testUser.setUserID("psystar");
	testUser.setUserPassword("vowkd");
	testUser.setUserName("박소여");
	testUser.setUserSex(0);
	testUser.setUserNickname("패장니");
	testUser.setUserPhonenumber("01098992222");
	testUser.setUserPreference(2);
	UserDAO userDAO = new UserDAO();
	int check = userDAO.join(testUser);
	%>
	회원가입 테스트:
	<%=check%><br>
	<br>

	<%
		check = userDAO.login("psy", "vowkd");
	%>
	로그인 테스트(성공):
	<%=check%><br>
	<%
		check = userDAO.login("psy", "vkd");
	%>
	로그인 테스트(실패):아이디는 있는데 비번틀 틀림
	<%=check%><br>
	<%
		check = userDAO.login("y", "vkd");
	%>
	로그인 테스트(실패):아이디 없음
	<%=check%><br>
	<br>

	<%
		check = userDAO.idCheck("psy");
	%>
	아이디 중복 체크 테스트: 중복된 아이디!
	<%=check%><br>
	<%
		check = userDAO.idCheck("ps");
	%>
	아이디 중복 체크 테스트: 사용가능 아이디!
	<%=check%><br>
	<br>

	<%
		check = userDAO.NicknameCheck("패장");
	%>
	닉네임 중복 체크 테스트: 중복된 닉네임 !
	<%=check%><br>
	<%
		check = userDAO.NicknameCheck("패");
	%>
	아이디 중복 체크 테스트: 사용가능 닉네임!
	<%=check%><br><br>



	<hr>
	LikeDAO 테스트

	<%
		LikeDAO likeDAO = new LikeDAO();
	%>
	<%
		check = likeDAO.checkLike("t2", 3);
	%>
	페이지 로딩시 하트 칠해져 있는지 여부(디비에는 있고 하트):
	<%=check%><br>
	<%
		check = likeDAO.checkLike("t1", 1);
	%>
	페이지 로딩시 하트 칠해져 있는지 여부(디비에는 있지만 빈하트):
	<%=check%><br>
	<%
		check = likeDAO.checkLike("t1", 2);
	%>
	페이지 로딩시 하트 칠해져 있는지 여부(디비에는 없음 ):
	<%=check%><br>
	<br>

	<%
		check = likeDAO.cancelLike("t2", 3);
	%>
	checkLike 2일떄: 칠해진 하트 클릭: 채워져 있는 하트가 빈 상태의 하트가 됨 :
	<%=check%><br>
	<br>

	<%
		check = likeDAO.reLike("t2", 3);
	%>
	checkLike 1일떄: 빈 하트 클릭: 빈 하트가 채워진 상태의 하트가 됨 :
	<%=check%><br>
	<br>

	<%
		check = likeDAO.pushLike("psy", 2);
	%>
	checkLike 0일떄: 빈 하트 클릭: 빈 하트가 채워진 상태의 하트가 됨(새로운 데이터 추가) :
	<%=check%><br><br>



	<hr>
	ReviewDAO 테스트
	<%ReviewDAO reviewDAO=new ReviewDAO(); %>
	<%check=reviewDAO.writeReview("psy", 2, "1번 리뷰", 3.5f); %>

</body>
</html>
