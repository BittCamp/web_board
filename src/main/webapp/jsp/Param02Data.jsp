<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<%
   String title = request.getParameter("title");
%>
<h3> <%= java.net.URLDecoder.decode(title, "utf-8") %></h3>
Today is : <%=request.getParameter("date") %>
</body>
</html>
