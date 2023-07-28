<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<h3>param 액션 태그</h3>
<jsp:include page="Param02Data.jsp">
  <jsp:param name="title" 
     value="<%=java.net.URLEncoder.encode("오늘의 날짜와 시각","utf-8")%>" />
  <jsp:param name="date" 
     value='<%=java.util.Calendar.getInstance().getTime()%>' />
</jsp:include>
<p>Java Server Page
</body>
</html>
