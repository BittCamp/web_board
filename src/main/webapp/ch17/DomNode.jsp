<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>DOM</title>
  <style type="text/css">
    #container{
     width: 500px;
     margin: 10px auto;
     padding: 20px;
    }
     #info{
     margin-top:20px; 
     }
     img{width: 100px;
         height: 100px;
     }
  </style>
  <script type="text/javascript">
   function addP(){
// 	   alert(1)
	   //p태그 만들기
	    var newP= document.createElement("p");
	   //텍스트 노드 만들기
	    var textNode 
	     = document.createTextNode("DOM은 Document Object Model의 줄임말입니다.");
	   //p 태그에 텍스트 노드 붙이기
	   newP.appendChild(textNode);
	   //info 안에 p태그 완정본을 추가
	   document.getElementById("info").appendChild(newP);
   }
  </script>
</head>
<body> 
 <div id="container">
  <h1>DOM을 공부합시다</h1>
  <img src="../images/easys-2.jpg" alt=""><br>
  <!-- 버튼 누를때 마다 함수를 호출하므로 한번 누르고 함수 호출 못하게 할 경우
  this.onclick='' 를 추가해서 함수 호출을 지운다.
   -->
   <a href="#" onclick="javascript:addP(); this.onclick='';">더 보기</a>    
   <div id="info"></div>
 </div> 
</body>
</html>