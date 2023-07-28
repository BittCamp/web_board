<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //선언문, 맴버 변수에 해당 
   String s1="Hello";
    String s2 = "HI";
%>

<% 
  //자바 코드 서비스 메소드에 들어감
  String ls1 = "Good!!";
  String ls2 = "Very";
  out.print("hello<br>");
%>
<!-- 출력용 -->
<%=s1%><br>
<%=s2%><br>
<%=ls1%><br>
<%=ls2%><br>