<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글자색 바꾸기</title>
<style type="text/css">
   body{text-align: center;}
   #heading{color:blue;}
   #text{
     color:gray;
     font-size: 15px;
   }
</style>
<script type="text/javascript">
var heading = function(){
	 document.getElementById('heading').style.color ="red";
  }
</script>
</head>
<body>
    <h1 id="heading" onclick="heading();">자바스크립트</h1>
    <p id="text">위 택스트를 클릭해 보세요</p>
<!-- <script type="text/javascript">
  //프로그래밍
  // 변수를 선언, headimg이라는 아이디를 선택하라
//   var heading = document.querySelector('#heading');
//   //heading이라는 변수의 값이 클릭되면. 함수 를 실행해라
//    heading.onclick = function() {
// 	  //heading의 문자 색깔을 빨간색을 변경
// 	   heading.style.color = "red";
//    }
  var heading = document.querySelector('#heading');
	  heading.onclick = function() {
	  heading.style.color = "red";
	  }
</script> -->
</body>
</html>