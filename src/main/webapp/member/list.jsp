<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
  *{margin: 0 auto;}
</style>
<title>회원정보</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>
<body>
<%@include file="top.jsp" %>
<div class="container">
<h3 style="text-align: center;">회원리스트</h3>
  <c:choose>
    <c:when test="${ members ==null or fn:length(members)==0}">
      <table>
        <tbody>
            <tr> <td>아직 회원이 없습니다.</td>
            </tr>
        </tbody>
      </table>
    </c:when>
    <c:when test="${members !=null and fn:length(members)>0}">
      <table>
        <tbody>
        <!--  반복문 돌리기 forEach 자바의 확장형 for문과 같은 처리 방법
         items에 들어가는 것은 내부에서 전달된 배열이나 리스트 형태
         var는 해당하는 리스트 한개씩 받는 변수        -->
         <tr>
           <th>아이디</th><th>이름</th>
         </tr>
        <c:forEach var="member" items="${members}">
            <tr> 
             <td>${member.id}</td>
             <td>${member.name}
               <input type="hidden" value="${member.passwd }"/>
             </td>
            </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:when>
  </c:choose>
  </div>
</body>
</html>