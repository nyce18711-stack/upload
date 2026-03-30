
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--    이름 : <%=stu.getName()%><br>--%>
<%--    중간 : <%=stu.getMid()%><br>--%>
<%--    기말 : <%=stu.getLast()%><br>--%>
<%--    평점 : <%=stu.getAvg()%><br>--%>
<%--    등급 : <%=stu.getGrade()%><br>--%>
    <%--
    .jsp 파일에 자바를 쓰는 경우
        -값 받으려고
        -조건문, 반복문
        -출력형식 때문에 String.format()

        EL (Expression Language)
        -값 읽을때
        -연산자 사용 가능
        -inport 필요 없음
        -값이 없으면 넘어감.

        EL  -parameter 읽기 : ${param.이름}
            -attribute 읽기 : ${애트리뷰트 이름}
            -object    읽기 : ${이름.멤버변수}

           기본형[] or ArrayList : ${이름[인덱스]}
           객체[]                : ${이름[인덱스].멤버변수}


    --%>
<hr>
이름 : ${param.n} <br>
중간 : ${param.m} <br>
기말 : ${student.last} <br>
평점 : ${student.avg} <br>
등급 : ${student.grade} <br>

<hr>

a : ${a}<br>
b : ${b} <br>
c : ${c[0]},${c[1]},${c[2]} <br>
d : ${d[0].grade} / ${d[1].name} <br>

<hr>
${students}<br>

<hr>
<%--1번 학생의 이름 / 등급--%>
${students[0].name} / ${students[1].grade} <br>


<%--3번 학생의 이름, 평점, 등급--%>
${students[2].name} / ${students[2].avg} / ${students[2].grade}

</body>
</html>
