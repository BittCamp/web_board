<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 연결</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
	  // h1 태그에 click 이벤트를 연결합니다.
         $('h1').on('click',function(evnt){
        	 $('<h1></h1>').text($(this).text()).appendTo('body');
         });
     });
</script>
</head>
<body>
  <h1>Header</h1>
</body>
</html>