<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>each()메소드 사용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
/*
 자바스크립트의 Array객체의 forEach객체와 비슷 그런데 메소드 인수의 순서가 반대
 forEach
 [].forEach(function(item, index)){
  }	
 jQuery의 each()메소드
  $().each(function(index, item){
  });
*/
 $(document).ready(function (){
	 //h1모두 추출하고 each로 반복 돌리기
	 $('h1').each(function (index, element){
		 //짝수번재 h1의 배경색 css적용
		 if(index%2 ==1){
			 //배경색 변경
			 $(this).css('backgroundColor','blue');
		 }
	 });
 });
</script>
</head>
<body>
   <h1>Header A</h1>
   <h1>Header B</h1>
   <h1>Header C</h1>
   <h1>Header D</h1>
</body>
</html>