<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* 전체 리스트를 감싸는 컨테이너 (필요 시 추가) */
        .list-wrapper {
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            border-top: 2px solid #333;
        }

        /* 개별 행 (Row) 설정 */
        .countainer {
            display: flex;            /* 가로 정렬 활성화 */
            align-items: center;      /* 세로 중앙 정렬 */
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
            text-align: center;       /* 텍스트 중앙 정렬 */
        }

        /* 각 열(Column)의 너비 설정 */
        .num   { flex: 0 0 50px;  font-weight: bold; } /* 번호: 고정 너비 */
        .name  { flex: 1;         text-align: left; padding-left: 15px; } /* 이름: 남은 공간 차지 */
        .price { flex: 0 0 120px; color: #e67e22; }    /* 가격: 고정 너비 */
        .date  { flex: 0 0 150px; color: #7f8c8d; }    /* 날짜: 고정 너비 */

        /* (선택 사항) 마우스 오버 효과 */
        .countainer:hover {
            background-color: #f9f9f9;
        }
    </style>

</head>
<body>
<h1>format.jsp 영역~~~</h1>
<%--출력 형식을 조절 = fmt--%>
${a}
<hr>
<fmt:formatNumber value="${a}"></fmt:formatNumber>

<hr>
<fmt:formatNumber value="${a}" type="currency" currencySymbol="$"></fmt:formatNumber>

<hr>
<fmt:formatNumber value="${b}"/>

<hr>
<fmt:formatNumber value="${b}" type="percent"/>

<hr>
<fmt:formatNumber value="${b}" pattern="0.00000"/><br>
<fmt:formatNumber value="${b}" pattern="#.#####"/>

<hr>
<fmt:formatNumber value="${b}" pattern="0,00.000"/> <br>
<fmt:formatNumber value="${b}" pattern="#,##.###"/>

<hr>
<fmt:formatNumber value="${c}" pattern="#,##.00"/>

<hr>
${d} <br>
<fmt:formatDate value="${d}"/>

<hr>
<fmt:formatDate value="${d}" type="date" dateStyle="short"/> <br>
<fmt:formatDate value="${d}" type="date" dateStyle="long"/>

<hr>

<fmt:formatDate value="${d}" type="time" timeStyle="short"/> <br>
<fmt:formatDate value="${d}" type="time" timeStyle="long"/>

<hr>

<fmt:formatDate value="${d}" type="both" dateStyle="short" timeStyle="long"/> <br>
<fmt:formatDate value="${d}" type="both" dateStyle="long" timeStyle="short"/>

<hr>

<fmt:formatDate value="${d}" pattern="yyyy.MM.dd / hh:mm:ss"/>


<hr>
<c:forEach items="${snacks}" var="s" varStatus="st">
    <div class="countainer">
        <div class="num">
                ${st.count}
        </div>
        <div class="name">
                ${s.name}
        </div>
        <div class="price">
            ₩ <fmt:formatNumber value="${s.price}"  pattern="#.00" ></fmt:formatNumber>
        </div>
        <div class="date">
            <fmt:formatDate value="${s.date}" pattern="yyyy-MM-dd"></fmt:formatDate>
</div>

    </div>
</c:forEach>


</body>
</html>
