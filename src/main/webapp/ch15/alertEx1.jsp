<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
  function addNumber(a,b){
	  var sum = a+b;
	  alert(sum);
  }
  function addNumber(a,b,c){
	  var sum = a+b+c;
	  alert(sum);
  }
</script>
</head>
<body>
  <button onclick="javascript:addNumber(5,6);">함수호출1</button>
</body>
</html>