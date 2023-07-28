<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타일시트 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
	  // 0부터 255까지 반복문을 돌리고   
	  for (var i = 0; i < 256; i++) {
		  //div 하나 만들어주고 그것을 body에 추가하고 거기에 스타일을 주는데 rgb를 i값으로 준다
		  $('<div></div>').css({
			height: 2,
			background: "rgb("+i+","+i+","+i+")"
		  }).appendTo('body');
	  }
  });
</script>
</head>
<body>

</body>
</html>