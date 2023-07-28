<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Array</title>
	<style>
		body {
			text-align: center;
		}
	</style>
</head>
<body>
<h1>배열의 각 요소</h1>
<script type="text/javascript">
 var numbers =["one", "two", "three", "four"];
 for(var i=0; i<numbers.length; i++){
	 document.write("<p>"+numbers[i]+"</p>");
 }
</script>
</body>
</html>