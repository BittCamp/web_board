<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<h3>param 액션 태그</h3>
<jsp:forward page="Param01Data.jsp">
  <jsp:param name="id" value="admin" />
  <jsp:param name="name" 
     value='<%=java.net.URLEncoder.encode("관리자","utf-8")%>' />
</jsp:forward>
<p>Java Server Page
</body>
</html>
