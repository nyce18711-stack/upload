<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%--
    .JSP 자바 쓰는 경우

    -값 읽으려고   -> EL로 해결

    --------------------------------------

    - 조건문, 반복문
    - 출력 형식 String.format
    - 이동(forward,redirect), 포함,

    .jsp    에서만 동작.


    1. JSP 표준 액션 태그 (정품)
        .jsp 에서 기본적으로 사용 가능.

    2. jstl (사제)
        .jsp 기본에 없음.
--%>


    <jsp:include page="index2.jsp"></jsp:include>
    <h1>index 1 page~~~~</h1>
<%--    <jsp:forward page="index2.jsp"></jsp:forward>--%>

</body>
</html>