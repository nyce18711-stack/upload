<%@page import="com.kky.tag.pay.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="finance-report">
		<div class="report-title">결산 보고서</div>

		<div class="item-row">
			<div class="label">번 돈</div>
			<div class="value plus">+ ${param.earn}</div>
		</div>

		<div class="item-row">
			<div class="label">쓴 돈</div>
			<div class="value minus">- ${param.spend}</div>
		</div>

		<hr class="divider">

		<div class="item-row total">
			<div class="label">남은 돈</div>
			<div class="value remain">${rr.remain}</div>
		</div>
	</div>
	
</body>
</html>