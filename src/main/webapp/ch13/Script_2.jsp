<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
   body{text-align: center;}
   #heading{color:blue;}
   #text{
     color:gray;
     font-size: 15px;
   }
</style>
<title>외부자바스크립트 사용 글자색 바꾸기</title>
</head>
<body>
 <h1 id="heading">자바스크립트</h1>
    <p id="text">위 택스트를 클릭해 보세요</p>
<script type="text/javascript" src="../js/changeColor.js">
</script>    
</body>
</html>