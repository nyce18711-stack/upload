<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.concurrent.ForkJoinPool"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-color: #f5f5f5;
	font-family: Arial, sans-serif;
}

.converter {
	width: 320px;
	margin: 100px auto;
	padding: 30px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.converter h2 {
	margin-bottom: 20px;
}

.converter label {
	display: block;
	text-align: left;
	margin-top: 10px;
	font-size: 14px;
}

.converter input, .converter select {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.converter button {
	width: 100%;
	margin-top: 20px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #4caf50;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: 0.3s;
}

.converter button:hover {
	background-color: #45a049;
}

.arrow {
	font-size: 35px;
}

.text {
	font-size: 20px;
}

.converter2, .converter3, .converter4 {
	width: 320px;
	margin: 20px auto;
	padding: 20px;
	border-radius: 12px;
	text-align: center;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	font-family: Arial, sans-serif;
}

.converter2 {
	background-color: #e3f2fd; /* 파랑 */
	border: 2px solid #64b5f6;
}

.converter3 {
	background-color: #e8f5e9; /* 초록 */
	border: 2px solid #81c784;
}

.converter4 {
	background-color: #fff3e0; /* 주황 */
	border: 2px solid #ffb74d;
}

.text {
	font-size: 20px;
	font-weight: bold;
	margin: 10px 0;
}

.arrow {
	font-size: 24px;
	margin: 10px 0;
}

button {
	margin-top: 15px;
	padding: 8px 16px;
	border: none;
	border-radius: 6px;
	background-color: #333;
	color: white;
	cursor: pointer;
}

button:hover {
	background-color: #555;
}
</style>

</head>
<body>
	<%
	double val = Double.parseDouble(request.getParameter("value"));
	String uni = request.getParameter("unit");
	
	double result = 0.0;
	Map<String, String> u1 = new HashMap();
	Map<String, String> u2 = new HashMap();
	if (uni.equals("a")) {
	
		result = val * 0.393;
		u1.put("uni", "cm");
		u2.put("uni", "inch");
	} else if (uni.equals("b")) {

		result = val * 0.302;
		u1.put("uni", "㎡ ");
		u2.put("uni", "평");

	} else if (uni.equals("c")) {
		result = (val * 1.8) + 32;
		u1.put("uni", "C ");
		u2.put("uni", "F");

	} else if (uni.equals("d")) {
		result = val * 0.621;
		u1.put("uni", "km/h");
		u2.put("uni", "mi/h");

	}

	DecimalFormat df = new DecimalFormat("#.#");
	String result2 = df.format(result);
	%>


	<div class="converter">
		<h2>변환결과</h2>
		<form action="unit.html">

			<div class="text"><%=val%>
				<%=u1.get("uni")%></div>
			<div class="arrow">↓</div>
			<div class="text">
				<%=result2%>
				<%=u2.get("uni")%></div>

			<button>돌아가기</button>
		</form>
	</div>

</body>
</html>