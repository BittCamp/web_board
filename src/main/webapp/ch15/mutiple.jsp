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
		function multiple(a, b = 5, c = 10) { 	// b = 5, c = 10으로 기본값 지정
			return a * b + c;
		}
    var result1 = multiple(5, 10, 20); // a = 5, b = 10, c = 20
    document.write("multiple(5, 10, 20)을 실행하면 결과는 " 
    		+ result1 + "입니다. <br>")
    var result2 = multiple(10, 20);    // a = 10, b = 20, c = 10(기본값)
    document.write("multiple(10, 20)을 실행하면 세번째 매개변수는 기본값을 사용하고 결과는 " 
    		+ result2 + "입니다.<br>")
    var result3 = multiple(30);        // a = 30, b = 5(기본값), c = 10(기본값)
    document.write("multiple(30)을 실행하면 두번째, "+
    		" 세번째 매개변수는 기본값을 사용하고 결과는 " + result3 + "입니다.")
	</script>	
</body>
</html>