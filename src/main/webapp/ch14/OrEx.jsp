<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조건문</title>
     <script>
     var numberOne = prompt("50미만의 숫자를 입력하세요.");
     var numberTwo = prompt("50미만의 숫자를 입력하세요.");

     if (numberOne < 10 || numberTwo < 10) 
       alert("두 개의 숫자 중 최소한 하나는 10 미만이군요.");
     else 
       alert("두 개의 숫자 중 10 미만인 수는 없습니다.");
   </script>
 </body>
</head>
<body>
</body>
</html>