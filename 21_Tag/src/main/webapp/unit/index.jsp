<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>
<body >
<div class="unit-body">
<form action="unit-menu" method="post">
    <div>
        <div>단위변환</div>
        <div>변환할값</div>
        <div>
            <input name="num" id="no">
        </div>
        <div>단위</div>
        <div>
            <select name="unit">
                <option value="cm">cm -> inch</option>
                <option value="㎡">㎡ -> 평</option>
                <option value="℃">℃ -> ℉</option>
                <option value="km/h">km/h -> mi/h</option>
            </select>

        </div>
        <div>
            <button>계산</button>
        </div>
    </div>
</form>
</div>
<script type="text/javascript">
    function  check() {
        const numEl = document.querySelector("#no");
        if (numEl.value == "") {
            alert("필수 입력하세요!")
            numEl.focus();
            return false;
        }
    }
</script>
</body>
</html>