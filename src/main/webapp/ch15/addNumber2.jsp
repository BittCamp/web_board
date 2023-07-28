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
    var sum = function(a, b){//변수에 함수를 저장, 변수를 함수로 사용하면됨
      return a + b;
    }
    document.write("함수 실행 결과 : " + sum(10, 20) );
  </script>	
</body>
</html>