<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function (){
	  $('#submit1').click(function(){
// 		 var f =  $('#form2'); //id로 가져오기
		 var f = $('form[name=form1]'); // 이름으로 가져오기
		 var n = $('input[name=name]').val();
		 if(n.length==0){
		  alert('이름을 입력하시오')
		 }else{
			f.submit(); 
		 }
	  });
  });
  
</script>
<title>유효성 검사</title>
</head>
<body>
<form name="form1" id="form2" action="">
  <p>이름: <input type="text" name="name" id="name"></p>
  <input type="submit" value="전송" id="submit1"/>
</form>
</body>
</html>