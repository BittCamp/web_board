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
	  // body 태그에 h1태그의 클릭이벤트를 위임한다.
         $('body').on('click','h1',function(evnt){
        	 //h1 태그를 생성해서 body 태그에 추가해라
        	 $('<h1></h1>').text($(this).text()).appendTo('body');
         });
     });
</script>
</head>
<body>
  <h1>Header</h1>
</body>
</html>