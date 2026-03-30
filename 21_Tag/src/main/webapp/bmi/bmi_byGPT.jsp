<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%--	<script src="bmi_byGPT.js"></script>--%>
</head>
<body onload="selectTag()">

	<div class="wrap">
		<div>BMI 결과</div>
		<div class="items first">
			<div>
				<img id="img" style="width: 200px" src="uploadFile/${bmiVO.FName}">
				<video id="video" src="uploadFile/${bmiVO.FName}" loop autoplay controls style="width: 200px"></video>
			</div>
		</div>


		<div class="items">
			<div>이름</div>
			<div>
				 ${bmiVO.name}
			</div>
		</div>
		<div class="items">
			<div>키 (cm)</div>
			<div>
			 ${bmiVO.height * 100}
			</div>
		</div>
		<div class="items">
			<div>체중 (kg)</div>
			<div>
				${bmiVO.weight}
			</div>
		</div>
		<div class="items">
			<div>BMI</div>
			<div>
			 ${bmiVO.bmi}
			</div>
		</div>
		<div class="items">
			<div>결과</div>
			<div>
				${bmiVO.status}
			</div>
		</div>
		

		<div>
<!-- 			<button onclick="history.back()">다시하기</button> -->
			<button onclick="history.back()">다시하기</button>
		</div>
	</div>





</body>
</html>