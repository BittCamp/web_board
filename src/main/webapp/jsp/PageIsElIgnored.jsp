<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<% request.setAttribute("RequestAtrribute", "reqest 내장객체"); %>
<!-- el 표기로 출력하기 -->
${requestScope.RequestAtrribute}
</body>
</html>