<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이미지 슬라이더</title>
<script src="../../jquery/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $().ready(function (){
	 // 변수를 선언
	 const w = 460; // const 변경하지 않는 변수 선언, 지역변수
	 const h = 300;
	 let current =0; // 지역변수, 변경가능
	 
	 // 함수 선언
	 const movTo = function(){//모두 이동한 후에 초기로 갈려고 왼쪽값을 지정
		 $('.images').animate({left: -current*w},1000);
	 };
	 //슬라이더 내부의 이미지 개수를 확인
	 const imgLength = $('.slider').find('.image').length;
	 //슬라이더 버튼 추가(슬라이더 개수만큼 만들기)
	  for(let i=0; i<imgLength; i++){
		  $('<button></button>')
		   .attr('data-position', i)
		   .text(i+"번")
		   .click(function(){
			   current = $(this).attr('data-position');
			   movTo();
		   })
		   .insertBefore('.slider'); //상위에서 버튼을 추가(시기는 이전)
	  } 
      // 슬라이더 스타일을 설정합니다.
      $('.slider').css({
    	position: "relative",
    	width: w,
    	height: h,
    	overflow: "hidden"
      });
      $('.images').css({
    	  position: "absolute",
    	  width: w*imgLength
      });
      $('.image').css({
    	  margin: 0,
    	  padding: 0,
    	  width: w,
    	  height: h,
    	  display: "block",
    	  float: "left"
      });
      // 3초마다 슬라이더를 이동시킵니다.
      setInterval(function () {
          current = current + 1;
          current = current % imgLength;
          movTo();
      }, 3000);
  });
</script>
</head>
<body>
   <div class="slider">
      <div class="images">
      <img alt="" class="image" src="http://placehold.it/460x300?text=image_0"/>
      <img alt="" class="image" src="http://placehold.it/460x300?text=image_1"/>
      <img alt="" class="image" src="http://placehold.it/460x300?text=image_2"/>
      <img alt="" class="image" src="http://placehold.it/460x300?text=image_3"/>
      <div class="image">
          <h1>이미지가 아닌 것</h1>
          <p>Lorem ipsum dolor sit amet.</p>
      </div>
      </div>
   </div>
</body>
</html>