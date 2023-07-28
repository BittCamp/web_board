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
      $('h1').on('click', function (event) {
          // 이벤트를 발생시킨 문서 객체의 문자를 추출합니다.
          var text = $(this).text();
          // 출력합니다.
          alert(text);
      });
  });
</script>
</head>
<body>
  <h1>Header_1</h1>
  <h1>Header_2</h1>
</body>
</html>