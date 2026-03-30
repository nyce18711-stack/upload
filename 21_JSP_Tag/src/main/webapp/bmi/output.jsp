<%@ page import="com.kky.tag.bmi.Information" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="info-container">
    <h1 class="info-title">- 회원 정보 확인 -</h1>
    <hr>
    <h1>
        <span class="label">이름 :</span>
        <span class="value">${information.name}</span>
    </h1>
    <h1>
        <span class="label">나이 :</span>
        <span class="value">${information.age}세</span>
    </h1>
    <h1>
        <span class="label">성별 :</span>
        <span class="value">${information.gender}</span>
    </h1>
    <h1>
        <span class="label">관심사 :</span>
        <span class="value">${information.habit2}</span>
    </h1>
</div>
</body>
</html>
