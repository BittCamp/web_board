<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도착지</title>
</head>
<body>
<% 
   //요청(request)객체에서 넘어온 파라메터 중 name이라는 파라메터 값 가져와서
   //name이라는 String 타입에 저장
  String name = request.getParameter("name");
  String hostValue = request.getHeader("host");
  String alValue = request.getHeader("accept-language");
  
%>
<p>이름: <%=name%></p>
<p>호스트명: <%=hostValue%></p>
<p>설정된 언어: <%=alValue%></p>

</body>
</html>