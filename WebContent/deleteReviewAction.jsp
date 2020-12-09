<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="like.*"%>
<%@ page import="review.*"%>
<%@ page import="user.*"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="review" class="review.Review" scope="page" />
<!-- // review review = new review(); -->
<jsp:setProperty name="review" property="fshopID" />
<jsp:setProperty name="review" property="star" /><!-- review.setreviewTitle(requrst) -->
<jsp:setProperty name="review" property="bbsContent" />

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%int fshopID= Integer.parseInt(request.getParameter("fshopID"));%>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
		userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.
	}
	

	ReviewDAO reviewDAO = new ReviewDAO();
	reviewDAO.deleteReview(userID, fshopID);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("history.back()");
	script.println("</script>");
	%>
</body>
</html>