<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보1</title>
<link rel="stylesheet" href="css/member1.css">
<script type="text/javascript" src="js/member1.js"></script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<form action="MemberGet.jsp" method="post" id="regData">
<input type="hidden" id="cnt" name="name" value=""  >
 <div id="container">
 <h3 style="text-align: center;">회원정보 입력</h3>
   <div class = "inputTag">아이디: &nbsp;&nbsp; 
      <input id="id" name="id" value="" size="10" required="required" autofocus="autofocus">
      <button onclick="javascript:idCheck()">아이디 중복채크</button>
      </div>
   <div class = "inputTag">이   름: &nbsp;&nbsp;&nbsp;
     <input name="name" id="na" value="" size="10" required="required" autofocus="autofocus">
   </div>
   <div style="text-align: center;">
      <input type="button" value="전송" onclick="javascript:validate1();"/>
   </div>
 </div>
</form>
</body>
</html>
