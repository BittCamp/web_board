<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 연습 2</title>
<style type="text/css">
 #container{
	width: 700px;
	height: 400px;
	margin: 0 auto;
	border: 1px solid #ccc;	
}
</style>
</head>
<body>
<div id="container">
<%@include file="IncludeHeader02.jsp" %>
<p style="text-align: center; font-size: 1.5em; color: blue;">방문해 주셔서 감사합니다.</p>
</div>
<%@include file="IncludeFooter02.jsp" %>
</body>
</html>