<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 이용해서 받기</title>
</head>
<body>
<%
 String id = request.getParameter("id");
 String passwd = request.getParameter("passwd");
%>
<p>아이디: <%=id %> </p>
<p>비밀번호: <%=passwd %> </p>
</body>
</html>