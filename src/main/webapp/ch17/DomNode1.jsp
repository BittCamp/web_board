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
   </style>
  <script type="text/javascript">
   function addContents(){
// 	   alert(1)
	   //p태그 만들기
	    var newP= document.createElement("p");
	   //텍스트 노드 만들기
	    var textNode 
	     = document.createTextNode("DOM은 Document Object Model의 줄임말입니다.");
	   //p 태그에 텍스트 노드 붙이기
	   newP.appendChild(textNode);
	   
	   //이미지 태그 만들고,속성 src, alt 만들고 이미지 주소를 넣고...속성에 추가
	    var newTag = document.createElement("img");
	    var srcNode = document.createAttribute("src");
	    var altNode = document.createAttribute("alt");
	    srcNode.value = "../images/dom.jpg";
	    altNode.value = "돔 트리 예제 이미지";
	    newTag.setAttributeNode(srcNode);
	    newTag.setAttributeNode(altNode);
	    
	   //info 안에 p태그 완정본을 추가
	   document.getElementById("info").appendChild(newP);
	   document.getElementById("info").appendChild(newTag);
   }
  </script>
</head>
<body> 
 <div id="container">
  <h1>DOM을 공부합시다</h1>
    <a href="#" onclick="javascript:addContents(); this.onclick='';">더 보기</a>    
   <div id="info"></div>
 </div> 
</body>
</html>