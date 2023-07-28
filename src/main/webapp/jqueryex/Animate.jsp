<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Animate</title>
<script src="../jquery/jquery-3.6.0.min.js"></script>
<style type="text/css">
  .box{
    /*크기*/
    width:100px;
    height: 100px;
    /*색상*/
    background-color: blue;
    /*위치*/
    position:absolute;
    left:10px;
    top:10px;
  }
</style>
<script type="text/javascript">
  $().ready(function(){
	  //.box를 클릭해서 
	  $('.box').click(function(){
		  //1초동안 왼고을 1000픽셀로 변경하기
		  $(this).animate({left:800},1000);
	  });
  });
</script>
</head>
<body>
 <div class="box"></div>
</body>
</html>