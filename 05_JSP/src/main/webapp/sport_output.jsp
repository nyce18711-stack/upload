<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.logging.Handler"%>
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
	String[] sports = request.getParameterValues("sport");
		
	String result = "";
	for (String s : sports) {
		result += s + " ";
	}
	
	String korresult = "";
	for(String ss : sports){
		switch (ss){
		case "soccer":
			korresult += "축구 ";
			break;
		case "basektball":
			korresult += "농구 ";
			break;
		case "badminton":
			korresult += "배드민턴 ";
			break;
		}
	}
	
	%>
	<h1><%= result %></h1>
	<h1><%= korresult %></h1>
	
	<hr>
	
	version2.
	
	<%
	Map<String, String> vals = new HashMap();
		vals.put("soccer", "축구");
		vals.put("basektball", "농구");
		vals.put("badminton", "배드민턴");
	for(String s : sports){ %>
		<h1><%= vals.get(s) %></h1>	
    <%	} %>
	
	
	
	
	
	
</body>
</html>