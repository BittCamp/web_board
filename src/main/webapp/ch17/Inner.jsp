<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>innerText, innerHTML 프로퍼티</title>
	<script type="text/javascript">
	 var now 
	 function inntext(){
	 now = new Date();
		 document.getElementById("current").innerText = now;
	 }
	 function innhtml(){
	 now = new Date();
		 document.getElementById("current").innerHTML = "<em>"+now+"<em>"
	 }
	</script>
</head>
<body>
    <button onclick="inntext()">innerText로 표시하기</button>
	<button onclick="innhtml()">innerHTML로 표시하기</button>
	<h1>현재 시각: </h1>
	<div id="current"></div>
</body>
</html>