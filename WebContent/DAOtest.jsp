<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="like.*"%>
<%@ page import="review.*"%>
<%@ page import="user.*"%>
<%@page import="java.util.ArrayList" %>
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
	LikeDAO 테스트

	<%
		LikeDAO likeDAO = new LikeDAO();
	%>
	<%
		int check = likeDAO.checkLike("t2", 3);
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




<h5>음식점 리뷰 작성 중복 체크</h5>
<%ReviewDAO reviewDAO=new ReviewDAO(); %>
	<%check=reviewDAO.checkReview("t2", 1); %>
	리뷰  중복   테스트(중복 ):<%=check%><br>
	<%check=reviewDAO.checkReview("t1", 1); %>
	리뷰  중복   테스트(중복아님):<%=check%><br>
	<%check=reviewDAO.checkReview("t2", 4); %>
	리뷰  중복   테스트(중복아님):<%=check%><br>
	
	<h5>음식점 리뷰 삭제</h5>
	<%check=reviewDAO.deleteReview("t2", 3); %>
	리뷰 삭제 테스트(성공 ):<%=check%><br>
	<%check=reviewDAO.deleteReview("sy", 3); %>
	리뷰 삭제 테스트(실패- 없는  글 ):<%=check%><br>
	
		
	<h5>별점 구하기</h5>
	 <%double star=reviewDAO.calStar(1); %>
	첫번째 식당:<%=star %>
	 <%star=reviewDAO.calStar(2); %>
	두번째 식당:<%=star %>
	 <%star=reviewDAO.calStar(3); %>
	세 번째 식당:<%=star %>
	
	<h5>음식점 리뷰 수정</h5>
	<%check=reviewDAO.updateReview("t2", 1, "아침 11다 소영아,,,", 5.0); %>
	리뷰 수정테스트(성공 ):<%=check%><br>
	<%check=reviewDAO.updateReview("t24252436", 3, "배고 졌", 5.0); %>
	리뷰 수정테스트(실패 없는 사용 자 ):<%=check%><br>
	<%check=reviewDAO.updateReview("t2", 10, "ㅁㄴㄹㅁ맛어 졌", 5.0); %>
	리뷰 수정테스트(실패: 없는 음식):<%=check%><br>
	
	<h5>음식점 전체 리뷰</h5>
	
	<% 	ArrayList<Review> list = new ArrayList<Review>();
	
	for(int x=1;x<9;x++){
	list=reviewDAO.getFshopReview(x);
	for(int i=0;i<list.size();i++){
	%>
	작성자: <%=list.get(i).getUserName()%> / 
	작성한 음식점: <%=list.get(i).getFshopID()%> /
	작성날짜  :<%=list.get(i).getBbsDate()%> /
	작성내용  :<%=list.get(i).getBbsContent()%> /
	평점  : <%=list.get(i).getStar()%> /
	<br>-----------------------------------------------<%=x %>-------------------------------------------------<br>
	<%
	}
	%><br><% 
	}
	%>
	
	<h5>사용자 전체 리뷰</h5>
	<%list=reviewDAO.getUserReview("t2");
	for(int i=0;i<list.size();i++){
	%>
	작성자: <%=list.get(i).getUserName()%> / 
	작성한 음식점: <%=list.get(i).getFshopID()%> /
	작성날짜  :<%=list.get(i).getBbsDate()%> /
	작성내용  :<%=list.get(i).getBbsContent()%> /
	평점  : <%=list.get(i).getStar()%> /
	<br>------------------------------------------------------------------------------------------------<br>
	<%
	}
	%>
	
	
	
</body>
</html>