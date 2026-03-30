<%@page import="com.kky.el.attr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	p : <%=request.getParameter("p") %><br>
	m :	<%=request.getParameter("m") %><br>
	rr : <%=request.getAttribute("rr") %>
		 
	
	
	
	
	
<hr>
	<%=request.getParameter("howmuch")%>원 부족하시네요!
	<hr>
	<%=request.getParameter("asd")%>원 모자라요~
	<hr>
	<%=request.getAttribute("asdasd")%>원 모자라요~!

	<a href="/el_war_exploded">처음으로</a>
</body>
</html>