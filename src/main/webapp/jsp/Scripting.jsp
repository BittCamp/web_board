<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
 <h2>Scripting Tag</h2>
 <%! int count = 3; //전역변수
   //메소드 맴버 메소드
   String makeItLower(String data){
	 return data.toLowerCase();
   }
 %>
  <% //jspService()메소드에 포함
      for(int i=1; i<=count;i++){
    	  out.println("Java Server Page"+i+"<br>");
      }
  %>
  <%=makeItLower("Hello World")%> <!-- 소문자로 변경 out.println(출력할 내용); -->
</body>
</html>