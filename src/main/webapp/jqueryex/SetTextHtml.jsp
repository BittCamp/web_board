<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Text</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 $().ready(function(){
	 $('.text-1').text("<h1>text()메소드</h1>");
	 $('.text-2').html("<h1>html()메소드</h1>");
 });
// element.innerHTML / element.innerText
</script>
</head>
<body>
    <p class="text-1">TestA</p>
    <p class="text-1">TestA</p>
    <p class="text-2">TestB</p>
    <p class="text-2">TestB</p>
</body>
</html>