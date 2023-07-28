<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
  <h3>이 파일은 Second.jsp입니다.</h3>
  <!-- request는 내장 객체로 요청시 정보를 전달하는 객체 -->
  Today is <%=request.getParameter("date")%>
<%--   Today is <%=new java.util.Date()%> --%>
</body>
</html>