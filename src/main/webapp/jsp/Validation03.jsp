<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function (){
	  // id가 submit1 클릭이 되면 checkForm이라는 함수를 실행하게 하고 
	  //함수에서는 alert(id와 passwd를 출력)
   $('#submit1').click(checkFrom);
  });
  function checkFrom(){
	 var id = $('input[name=id]').val();
	 var passwd = $('input[name=passwd]').val();
	 //추가로, id와passwd값이 입력되지 않았다면 입력하라는 메시지 출력 
/* 	 if(id.length==0 || passwd.length ==0){
		 alert("아이디와 패스워드를 입력하시오.");
		 return false;
	 } */
    if(id.length==0){
		alert("아이디를 입력하시오")
		id.focus();
		return false;
	 }else if(passwd==0){
		 alert("패스워드 입력하시오")
		 passwd.focus();
		 return false;
	 } 
	 alert(id +"\n"+passwd);
	 return true;
  }
</script>
<title>유효성 채크</title>
</head>
<body>
  <form name="frm" style="text-align: center;" 
  action="/webBoard/hello" method="post">
     <p>아 이 디: <input type="text" name="id"/></p>  
     <p>비밀번호: <input type="password" name="passwd" /></p>  
     <p><input type="submit" value="전송" id="submit1"></p>  
  </form>
</body>
</html>