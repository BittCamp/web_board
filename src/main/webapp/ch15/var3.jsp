<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>변수 호이스팅</title>
</head>
<body>
  <script>		 
    var x = 10;
		function displayNumber() { 								
      console.log("x is " + x);
      console.log("y is " + y);      
      var y = 20;
		}
    displayNumber();
  </script>
</body>
</html>