<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자바스크립트 이벤트</title>
	<link rel="stylesheet" href="../css/function.css">
	<script type="text/javascript">
	 function changeBg(color){//이벤트 핸들러 또는 처리기
	  //선택자를 호출해서 해당 선택자를 지정 받기(var result는 id 셀렉터가 됨)
	  var result = document.querySelector('#result');
	  result.style.backgroundColor=color;
	 }
	</script>
</head>
<body>
<!-- onclick은 이벤트
 <a href ~~~~>~~~~</a> 는 이벤트 소스
 -->
	<ul>
		<li><a href="#" onclick="changeBg('green')">Green</a></li>
		<li><a href="#" onclick="changeBg('orange')">Orange</a></li>
		<li><a href="#" onclick="changeBg('purple')">Purple</a></li>
	</ul>		
	<div id="result"></div>
</body>
</html>  