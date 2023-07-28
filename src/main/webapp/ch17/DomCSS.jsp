<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>DOM CSS</title>
	<style>
		#container {
			width:400px;
			margin:50px auto;
			text-align: center;
		}
		#rect {
			width:100px;
			height:100px;			
			border:1px solid #222;
			margin:30px auto;
			transition: 1s;/*1초동안 변경하기*/
		}
	</style>
	<script>
	window.onload=function(){
     	var myRect = document.querySelector("#rect");
		myRect.addEventListener("mouseover", function() {  // mouseover 이벤트 처리
			myRect.style.backgroundColor = "green";  // myRect 요소의 배경색 
			myRect.style.borderRadius = "50%";  // myRect 요소의 테두리 둥글게 처리
		});
		myRect.addEventListener("mouseout", function() {  // mouseout 이벤트 처리
			myRect.style.backgroundColor = "";  // myRect 요소의 배경색 지우기 
			myRect.style.borderRadius = "";  // myRect 요소의 테두리 둥글게 처리 안 함
		});
	}
	</script>
</head>
<body>
	<div id="container">
		<p>도형 위로 마우스 포인터를 올려놓으세요.</p>
		<div id="rect"></div>
	</div>	
	
</body>
</html>