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
	</style>
</head>
<body>
	<script>		
		function addNumber(num1, num2){ 								
			/* var sum = num1 + num2;			
			return sum; */
			return num1+num2;
		}
    var result = addNumber(2, 3);
    document.write("두 수를 더 한 값 : " + result);
	</script>	
</body>
</html>