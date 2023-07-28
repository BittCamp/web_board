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
 let hi1 = function(user) {
     document.write(user+"님, 안녕하세요?<br>");
 }
 let hi2 = (user) => { document.write(user+"님, 안녕하세요?<br>");}
 
 let hi3 = user  => { document.write(user+ "님, 안녕하세요?");}
 hi1("희수");
 hi2("희수");
 hi3("희수");
 </script>
</body>
</html>