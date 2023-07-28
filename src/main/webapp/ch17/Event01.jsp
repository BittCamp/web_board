<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DOM event 객체</title>
  <style>
    #container {
      width:300px;
      margin:10px auto;
    }
  </style>
</head>
<body >
  <div id="container">
    <img src="../images/cup-1.png" id="cup">		
  </div>
	<script>
	 var cup = document.querySelector("#cup");  // id = cup인 요소를 가져옴
//      cup.onclick = changePic;
    cup.onclick = function(){
    	cup.src = "../images/cup-2.png"
    }  
    function changePic(){
    	cup.src = "../images/cup-2.png"
    }
	</script>
</body>
</html>