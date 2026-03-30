<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/member_list.css">

    <script>
        function deleteMember(nooo) {
            let ok = confirm("Really?");

            if (ok) {
                location.href = 'del?num=' + nooo;
            }
        }

        function updateMemberName(nnn, naaame) {
            let name = prompt('edit', naaame)
            // alert(name);
            if (name != "" && name != null) {
                location.href = 'update?num=' + nnn + '&n=' + name;

            }
        }
    </script>
</head>
<body>

<div class="table-container">
    <div class="table-header">
        <div>Name</div>
        <div>Age</div>
    </div>
    <c:forEach var="m" items="${members}">
        <div class="table-row">
            <div class="cell-name"><span onclick="updateMemberName('${m.no}','${m.name}')">${m.name}</span></div>
            <div class="cell-age">${m.age}</div>
            <button onclick="deleteMember(${m.no})">delete</button>
        </div>
    </c:forEach>
</div>

</body>
</html>
