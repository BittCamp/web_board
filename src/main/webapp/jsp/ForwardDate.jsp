<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
 <div style="border: 1px solid gray; width: 500px; height: 100px;">
   <p style="text-align: center;">오늘의 날짜와 시간</p>
   <p style="text-align: center;">
   <%=new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss")
   .format(new java.util.Date()) %>
   </p>
 </div>
</body>
</html>