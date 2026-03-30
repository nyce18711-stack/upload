<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>

<div class="add-res">
    <form action="" METHOD="POST" ENCTYPE="multipart/form-data">
        <input type="text" name="name" placeholder="name"> <br>
        <input type="text" name="place" placeholder="place"><br>
        <input type="file" name="img"><br>
        <button>Add</button>
    </form>
</div>


<hr>

<div class="res-wrap">
    <c:forEach items="${restaurants}" var="r">
        <div class="res-card">
            <div style="position: relative"><img src="upload/${r.img}">
                <button onclick="delRes('${r.no}')" style="position: absolute; top: 0;right: 0">x</button>
            </div>
            <div style="position: relative">${r.name}
                <button onclick="upResName('${r.no}', '${r.name}')" style="position: absolute; right:0; ">edit</button>
            </div>
            <div>${r.place}</div>

        </div>

    </c:forEach>
</div>
<script>
    function delRes(nooo) {
        let ok = confirm("really?");
        if (ok) {
            location.href = 'del?no=' + nooo
        }
    }

    function upResName(nn, nameee){
        let name = prompt('edit name', nameee);
        if (name !="" && name != null) {
            location.href = 'up?pk='+nn+'&n='+name;
        }
    }

</script>

</body>
</html>

