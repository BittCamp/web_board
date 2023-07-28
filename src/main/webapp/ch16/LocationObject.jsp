<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Location Object</title>
<style type="text/css">
    #container {
			width:500px;
			margin:10px auto;
		}
</style>
<script type="text/javascript">
   function displyfunc(){
	   var display = document.querySelector("#display");
	   display.innerHTML="<p><b>location.href : </b>" + location.href + "</p>"
	   +"<p><b>location.host : </b>" + location.host + "</p>"
	   +"<p><b>location.protocol : </b>" + location.protocol + "</p>";
   }
   
</script>
</head>
<body onload="javascript: displyfunc();">
  <div id="container">
     <h2>location 객체</h2>
     <div id="display">
        
     </div>
     <button onclick=
    	 "location.replace('http://www.easyspub.com')">이지스퍼블리싱 홈페이지로 이동</button>
  </div>
</body>
</html>