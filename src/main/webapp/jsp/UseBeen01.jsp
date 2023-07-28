<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Use Bean</title>
</head>
<body>
<!-- String s = new String(); 
  s의 역할을 하는 것이 id의 person
  Person person = new Person();
-->
<jsp:useBean id="person" class="webBoard.dto.Person" scope="request"/>
<%--     <p> 아이디: <c:out value="${id }" /></p> --%>
 <p> 아이디: <%=person.getId() %></p><br>
 <p> 이름 : <%=person.getName()%></p>
 <%
 //setter로 변경
 person.setId("20231003");
 person.setName("홍길동");
 %>
 <!-- 출력 해봄 -->
 <p> 아이디: <%=person.getId() %></p><br>
 <p> 이름 : <%=person.getName()%></p>
</body>
</html>