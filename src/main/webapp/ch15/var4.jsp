<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>var 예약어를 사용한 지역 변수와 전역 변수</title>
</head>
<body>
	<script>		
		function addNumber(num1, num2) { 								
			return num1 + num2;						
		}
		var sum = addNumber(10, 20);
    console.log(sum);
    sum = 50;
    console.log(sum);
    var sum = 100;
    console.log(sum);
  </script>
</body>
</html>