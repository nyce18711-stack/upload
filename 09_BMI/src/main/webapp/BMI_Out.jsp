<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style >
body{
    margin:0;
    padding:0;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#e9e9ee;
    font-family:'Noto Sans KR','Segoe UI',sans-serif;
}

/* 카드 */
.container{
    width:380px;
    padding:40px 45px;
    border-radius:16px;

    background:linear-gradient(135deg,#e9e9ee,#cfcfdc);

    box-shadow:
    8px 8px 18px rgba(0,0,0,0.15),
    -6px -6px 12px rgba(255,255,255,0.7);
}

/* 제목 */
h1{
    text-align:center;
    color:#4a5bbf;
    font-size:30px;
    font-weight:700;
    margin-bottom:35px;
}

/* 입력 줄 */
.text{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin:18px 0;

    font-size:22px;
    font-weight:600;
    color:#5b6bc0;
}

/* 입력칸 */
input{
    width:180px;
    padding:10px 12px;

    border-radius:8px;
    border:none;

    background:#f3f3f7;

    box-shadow:
    inset 2px 2px 6px rgba(0,0,0,0.15),
    inset -2px -2px 6px rgba(255,255,255,0.9);

    font-size:14px;
}

/* 결과 값 */
span{
	font-size:18px;
    font-weight:600;
    color:#333;
}

/* 버튼 */
button{
    width:100%;
    margin-top:30px;
    padding:12px;

    border:none;
    border-radius:10px;

    font-size:16px;
    font-weight:600;
    color:white;

    background:linear-gradient(90deg,#c3c5e8,#2f49a8);

    box-shadow:0 5px 12px rgba(0,0,0,0.2);

    cursor:pointer;
    transition:0.25s;
}

button:hover{
    transform:translateY(-2px);
    box-shadow:0 8px 18px rgba(0,0,0,0.25);
}
#img{
    width:200px;
    height:200px;
    object-fit:cover;

    border-radius:15px;

    border:4px solid rgba(255,255,255,0.6);

    box-shadow:
        0 10px 25px rgba(0,0,0,0.2),
        inset 0 0 10px rgba(255,255,255,0.3);

    margin:15px auto 25px auto;
    display:block;

    transition:0.3s;
}

/* hover 효과 */
#img:hover{
    transform:scale(1.05);
    box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

</style>

</head>
<body>
	<%
	String path = request.getServletContext().getRealPath("uploadFile");
	MultipartRequest mr = new MultipartRequest(request, path, 1024 * 1024 * 20,"utf-8", new DefaultFileRenamePolicy());
	
	
	String n = mr.getParameter("name");
	double h = Double.parseDouble(mr.getParameter("height"));
	double w = Double.parseDouble(mr.getParameter("weight"));
	String imgF = mr.getFilesystemName("imgFile");
	
	double bmi = 0;
	String status = "null";
	
	// bmi 계산
	bmi = w / ((h / 100) * (h / 100));
	
	status = "3단계 비만";
	if (bmi < 18.5) {
		status = "저체중";
	} else if (bmi <= 22.9) {
		status = "정상";
	} else if (bmi <= 24.9) {
		status = "비만전단계";
	} else if (bmi <= 29.9) {
		status = "1단계 비만";
	} else if (bmi <= 34.9) {
		status = "2단계 비만";
	}
	
	DecimalFormat df = new DecimalFormat("#.#");
	String bmi2 = df.format(bmi);
			 %>
			 
			 
	<form action="bmi.html" >

		<div class="container">
			<div>
				<h1>BMI 결과</h1>
			</div>
			<div>
				<img id="img" style="width: 200px" src="uploadFile/<%=imgF%>">
			</div>
			<div class="text">
				이름 : <span class="value"><%=n %></span>
			</div>
			<div class="text">
				키(CM) : <span class="value"><%=h %></span>
			</div>
			<div class="text">
				체중(KG) : <span class="value"><%=w %></span>
			</div>
			<div class="text">
				BMI : <span class="value"><%=bmi2 %></span>
			</div>
			<div class="text">
				결과 : <span class="value"><%=status %></span>
			</div>
			<div>
				<button>다시하기</button>
			</div>

		</div>
	</form>
			 
			 
</body>
</html>