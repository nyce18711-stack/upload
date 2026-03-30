<%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 2026-03-17
  Time: 오후 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>second page~~~</h1>
파라미터 : ${param.a}
<hr>
에트리뷰트 : ${b}
<hr>
세션 : ${c} <br>
세션 : ${sessionScope.c} <br>
<hr>
쿠키 : ${cookie.d.value}
<hr>
<form action="third-c">
    <input type="text" name="a" value="${param.a}">
    <button>third로 요청</button>
</form>
<hr>
<h2 onclick="location.href='third-c?b=${b}'">third-c로 get 요청</h2>

</body>
</html>
