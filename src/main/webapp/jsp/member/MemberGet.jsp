<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8");//요청시 들어오는 글자를 utf-8로 변경해라
%>
<jsp:useBean id="member" class="member.dto.MemberBean" scope="page"/>
<jsp:setProperty property="*" name="member"/>
<%--  <jsp:setProperty property="id" name="member"/> --%>
<%--  <jsp:setProperty property="name" name="member"/> --%>
  <jsp:getProperty name="member" property="id"/>와 
  <jsp:getProperty name="member" property="name"/>을
  저장 합니다.
 <%
 // 웹 라이브러 저장 mysql은 connector/j.jar, oracle jdbc.jar
 //드라이버를 클래스로 받아라
 Class.forName("com.mysql.cj.jdbc.Driver");
//  Class.forName("com.mysql.jdbc.Driver");
//데이터베이스와 길을 뚫어라 Connection 연결 객체 생성
//DriverManager 단 하나의 connection 객체 갖고 오게 해줘(singleton 패턴)
 Connection conn= 
 DriverManager.getConnection("jdbc:mysql://localhost:3306/boarddb","root","1234"); 
 PreparedStatement pstmt =null;
 if(conn!=null){
	 //데이터베이스에 저장
	 String id = member.getId();
	 String name = member.getName();
	 //?를 사용하면 외부에서 잘못된 정보로 공격하는 것을 막을 수 있음
	 String sql = "insert into member(id, name) values(?,?)";
	 /*쿼리문을 가지고 다니는 객체*/
	  pstmt = conn.prepareStatement(sql);
	 //?완성 1번째 ?는 id
	 pstmt.setString(1, id);
	 pstmt.setString(2,name);
	 // 실행하라.
	 int c = pstmt.executeUpdate(); //insert, update, delete 실행하는 메소드
	 if(c>0) out.println("저장성공");
 }else{
	 out.println("연결실패");
 }
 if(pstmt!=null)pstmt.close();
 if(conn!=null) conn.close();
 %>
 
 
 