<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.*"%>
<%@ page import="like.*"%>
<%@ page import="review.*"%>
<%@ page import="user.*"%>
<%@ page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList" %>
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
	ReviewDAO 테스트
	<%ReviewDAO reviewDAO=new ReviewDAO(); 
	int check;
	ArrayList<Review> list = new ArrayList<Review>();%>
	<hr>
	
	<h5>음식점 전체 리뷰</h5>
	<% 
	for(int x=1;x<9;x++){
		list=reviewDAO.getFshopReview(x);
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
	
	
	
	<h5>음식점 리뷰 수정</h5>
	<%check=reviewDAO.updateReview("t2", 1, "아침 11다 소영아,,,", 5.0); %>
	리뷰 수정테스트(성공 ):<%=check%><br>
	<%check=reviewDAO.updateReview("t24252436", 3, "배고 졌", 5.0); %>
	리뷰 수정테스트(실패 없는 사용 자 ):<%=check%><br>
	<%check=reviewDAO.updateReview("t2", 10, "ㅁㄴㄹㅁ맛어 졌", 5.0); %>
	리뷰 수정테스트(실패: 없는 음식):<%=check%><br>
	
	
	

	<h5>음식점 전체 리뷰</h5>
	
	<% 
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
