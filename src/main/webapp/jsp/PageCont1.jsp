<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<%!int count = 0; %><!-- count선언 후 0으로 초기화 -->
<body>
<h2>Page count is: </h2>
 <% out.print(++count); 
   //숫자가 1식 증가
 %>
</body>
</html>