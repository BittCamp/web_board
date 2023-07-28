<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
  <h3>이 파일은 first.jsp입니다.</h3>
  <jsp:forward page="Second.jsp"/>
  
 <!-- forward다음에 있는 내용-->
  <p>=====first.jsp의 페이지입니다.=======</p>
</body>
</html>