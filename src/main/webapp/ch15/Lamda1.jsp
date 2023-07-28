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
 const hi1 = function() {
     return "안녕하세요?";
 }
 const hi2 = () => {return "안녕하세요?"}; // const hi = 할당 및 함수:()=> {return "안녕하세요?"};
 
 const hi3 = () => "안녕하세요?";
alert("1: "+hi1());
alert("2: "+hi2());
alert("3: "+hi3());
 </script>
</body>
</html>