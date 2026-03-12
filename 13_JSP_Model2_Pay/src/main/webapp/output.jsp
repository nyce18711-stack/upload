<%@page import="com.kky.pay.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Result r = (Result) request.getAttribute("rr");
	
	
	%>
	번돈		: <%=request.getParameter("earn") %> <br>
	쓴돈		: <%=request.getParameter("spend") %> <br>
	남은 돈	: <%=r.getRemain() %> <br>
	
</body>
</html>