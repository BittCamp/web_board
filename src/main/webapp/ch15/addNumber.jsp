<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>함수</title>
 <script type="text/javascript">
   (function(a,b){
	   sum =  a+b;
   }(100,200));
   document.writeln("함수 실행 결과1: "+sum+"<br>");
   (a,b) => { sum=a+b}/*람다식*/
   document.writeln("함수 실행 결과2: "+sum);
 </script>
</head>
<body>

</body>
</html>