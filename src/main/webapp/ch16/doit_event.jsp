<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이벤트 공지</title>
<script type="text/javascript">
  function loadURL(url){
// 	  alert(url);
    window.opener.location= url; //부모창의 location에 url을 넘겨줌
    window.close();
  }
</script>
<style type="text/css">
  #container{
   width: 600px;
   margin: 10px auto;
   padding: 10px;
   text-align: center;
  }
</style>
</head>
<body>
 <div id="container">
    <img alt="" src="../images/doit.jpg">
    <p><a href="Doit_main.jsp" 
           onclick="javascript:loadURL(this.href); return false;">자세히 보기</a></p>
 </div>
</body>
</html>