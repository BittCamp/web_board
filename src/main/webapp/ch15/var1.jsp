<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>var 예약어로 지역 변수 선언하기</title>
</head>
<body>
	<script>		
		function addNumber() { 								
			var sum = 10 + 20;			
		}
    addNumber();
    console.log(sum);    
  </script>
</body>
</html>