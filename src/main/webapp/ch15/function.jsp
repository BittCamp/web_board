<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>함수</title>
  <style>
	body {
		padding-top:20px;
		text-align:center;
	    }
    .accent {
      font-weight:bold;
      font-size:1.2em;
      color:#00f;
    }
	</style>
		<script>		
    (function() {// 함수를 호출하지 않고 실행함, 함수 정의
      var userName = prompt("이름을 입력하세요.");
      document.write("안녕하세요? <span class='accent'>" 
    		  + userName + "</span>님!");
    }());//함수 호출
  </script>
</head>
<body>
	
</body>
</html>