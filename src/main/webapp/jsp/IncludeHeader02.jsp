<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
 int pageCnt = 0;
 void addCnt(){
   pageCnt++;	
 }
%>
<%addCnt();%>

<p style="text-align: right;">
   사이트 <%=pageCnt %>번재 방문자 입니다.
</p>