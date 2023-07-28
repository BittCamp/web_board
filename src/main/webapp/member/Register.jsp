<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<link rel="stylesheet" href="./css/member.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript" src="./js/member.js"></script>
</head>
<body>
<jsp:include page="top.jsp"/>
<form action="insertMemPro.do" method="post">
   <h3 style="text-align: center">회원정보 입력</h3>
   <div class="container">
   <div class = "inputTag">아 이 디 : &nbsp;&nbsp;
     <input type="text" name="id" size="20" title="아이디" class="chk"
        required="required" id="idchk"><br>
     <div class="inputTag" style="font-size: 0.8em;"><font id="msg"></font></div>
   </div>
   <div class = "inputTag">이 &nbsp;&nbsp;&nbsp; 름 : &nbsp;&nbsp;
     <input type="text" name="name" size="20" title="이름" class="chk"
     required="required">
   </div>
   <div class = "inputTag">비밀번호 : &nbsp;&nbsp;
     <input type="password" name="passwd" size="20" title="비밀번호" class="chk pw1"
     required="required">
   </div>
   <div class = "inputTag">비번확인 : &nbsp;&nbsp;
     <input type="password" name="passwd1" size="20" title="비번확인" class="chk pw2"
      required="required"><br>
      <div class="inputTag"><font class="pwMsg"></font></div>
   </div>
    <div style="text-align: center;">
      <input type="submit" id="submit1" value="등록" />
   </div>
   </div>
</form>
<jsp:include page="bottom.jsp"/>
</body>
</html>