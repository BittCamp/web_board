<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %><!-- 해당 디렉티브로 인해서 현재 페이지는 에러내장객체 
exception이라는 객체를 쓸 수 있다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
  <h3>에러가 발생했습니다.</h3>
  <h4>exception 내장객체 변수</h4>
  <%
   // jsp 가 갖고 있는 만들어진 객체를 내장객체
   /* out, exeption, session, request, respose 등*/
    exception.printStackTrace(new PrintWriter(out));  
    
  %>
</body>
</html>