<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이벤트 지우기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 $().ready(function(){
	const handler = function(event){
		//h1태그를 생성해서 body 추가
		$('<h1></h1>')
		  .text($(this).text())
		  .click(handler)
		  .appendTo('body');
		//현재 태그의 이벤트 제거
		$(this).off();
	};
	//h1태그를 클릭하면 handler호출
	$('h1').on('click',handler);
 });
</script>
</head>
<body>
  <h1>Header</h1>
</body>
</html>