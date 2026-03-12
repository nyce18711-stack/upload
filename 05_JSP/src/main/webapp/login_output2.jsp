<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
h2 {
	color: red;
}
</style>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String result = "";
	if (id.equals("ky")) {
		if (pw.equals("1004")) {
			result = "로그인 성공!";
		} else {
			result = "비번 오류!";
		}
	} else {
		result = "존재하지 않는 회원입니다";
	}
	%>
	
<h1>ID : <%= id %></h1>
<h1>PW : <%= pw %></h1>
<h1><%= result %></h1>


</body>
</html>