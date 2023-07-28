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
	  var name = $('input[name=name]').val();
	  if(name.length <6 || name.length > 12){
			alert("이름을 6~12자 사이로 입력하시오");
			return false;
	  }
		   return true;
	  
  }
</script>
<title>유효성 채크</title>
</head>
<body>
  <form name="frm" style="text-align: center;" 
  action="" method="post">
     <p>이름: <input type="text" name="name"/>
        <input type="submit" id="submit1" value="전송">
     </p>  
  </form>
</body>
</html>