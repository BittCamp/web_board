<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>속성 변경 연습2</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
		  $('<h1></h1>').text('안녕하쇼')
		   .attr('data-test','test')
		   .css({
			backgroundColor: "#781D78",
			color:'white'
		  }).appendTo('body');
  });
</script>
</head>
<body>

</body>
</html>