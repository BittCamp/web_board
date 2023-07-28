<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>라이트박스</title>
    <link rel="stylesheet" href="../css/lightbox.css"/>
    <script type="text/javascript">
     window.onload = function(){
    	var pics = document.getElementsByClassName("pic"); // .pic인 요소들을 가져와 pics 라는 변수에 저장. querySelectorAll(".pic")도 가능
        var lightbox = document.getElementById("lightbox");  // 라이트 박스. querySelector("#lightbox")도 가능
        var lightboxImage = document.getElementById("lightboxImage");  // 라이트 박스 안의 이미지. querySelector("#lightboxImage")도 가능 
        for(let i=0; i<pics.length; i++){
        	//각 이미지에 클릭리스너 걸어주기
        	pics[i].addEventListener("click",showLightBox);
        }
        function showLightBox(){
        	//bigLocation = this.data-src; 도 가능.
        	var bigLocation = this.getAttribute("data-src");
        	lightboxImage.setAttribute("src",bigLocation);
        	lightbox.style.display="block";
        }
        lightbox.onclick = function(){
        	lightbox.style.display = "none";
        }
     }
    </script>
     </head>
  <body>
    <div class="row">
      <ul>
        <li><img src="../images/tree-1-thumb.jpg" 
              data-src="../images/tree-1.jpg" class="pic"></li>
        <li><img src="../images/tree-2-thumb.jpg" 
        	  data-src="../images/tree-2.jpg" class="pic"></li>
        <li><img src="../images/tree-3-thumb.jpg" 
        	  data-src="../images/tree-3.jpg" class="pic"></li> 
        <li><img src="../images/tree-4-thumb.jpg" 
        	  data-src="../images/tree-4.jpg" class="pic"></li>
        <li><img src="../images/tree-5-thumb.jpg" 
        	  data-src="../images/tree-5.jpg" class="pic"></li>
        <li><img src="../images/tree-6-thumb.jpg" 
        	  data-src="../images/tree-6.jpg" class="pic"></li>          
      </ul>    
    </div>

    <div id="lightbox">
		 <img src="../images/tree-1.jpg" alt="" id="lightboxImage">			
    </div>
   </body>
   </html>