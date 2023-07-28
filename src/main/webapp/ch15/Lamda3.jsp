<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>람다 함수</title>

</head>
<body >
 <script type="text/javascript">
 let sum1 = function(a,b) {
     return a+b
 }
 let sum2 = (a,b) => a+b;

document.write("두수의 합:"+ sum1(10,20)+"<br>");
document.write("두수의 합:"+ sum2(10,20));
 </script>
</body>
</html>