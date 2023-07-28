<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject" %>
<%
// Class.forName("com.mysql.cj.jdbc.Driver");
//  System.out.println("여기왔다::"+1);
  JSONObject jobj = new JSONObject();
  jobj.put("result", "잘다녀옴");
  response.setContentType("application/json");
  out.print(jobj.toJSONString()); // json 형식으로 출력
%>
