<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jquery 연습1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
	//h1 태그를 모두 추출(document.querySelectorAll('h1') 과 유사)  
	  var $headers = $('h1');
	//h1의 개수만큼 반복문 돌려서 특정위치에서 짝수만 배경색 적용
	for(let i=0; i<$headers.length;i++){
		if(i%2 ==1){//실째 2번째 4번째 선택하기 위해 조건 줌
	      //i번째 엘리먼트 선택해서 domE에 담기
		  var domE = $headers.get(i);
		  //배경 색 지정 해당 엘리먼트의 css속성 변경
		  $(domE).css('backgroundColor','blue');
		}
		
	}
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