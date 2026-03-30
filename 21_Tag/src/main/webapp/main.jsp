<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bitcount+Prop+Double+Ink:wght@100..900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/bmi_byGPT.css">
    <link rel="stylesheet" href="css/unit.css">
</head>
<body>
<div class="header">
    <a href="home">mz's place</a>
</div>
<div class="nav">
    <div><a href="a">A</a> </div>
    <div><a href="b">B</a> </div>
    <div><a href="c">C</a> </div>
    <div><a href="unit-menu">unit</a> </div>
    <div><a href="bmi-menu">bmi</a> </div>
</div>
<div class="main">
    <jsp:include page="${contentPage}"></jsp:include>
</div>
<div class="footer">
    information, ..
</div>


</body>
</html>