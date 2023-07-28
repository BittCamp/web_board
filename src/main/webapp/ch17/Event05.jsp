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
<body>
	<div id="container">
		<img src="../images/easys-1.jpg" id="cover">	
  </div>
  
	<script>
		var cover = document.getElementById("cover");
		cover.addEventListener("mouseover",changePic, false);
    cover.addEventListener("mouseout",originPic, false);
    
    function changePic() {
      cover.src = "../images/easys-2.jpg";
    }
    function originPic() {
      cover.src = "../images/easys-1.jpg";
    }
	</script>
</body>
</html>