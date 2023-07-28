<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
  #content{
   border: 2px double skyblue;
   border-radius: 10px;
   padding: 10px;
  }
  ul{ margin-left: 15px;
     list-style-type: none;
  }
  ul li{margin: 10px 5px;}
  button{
    position: absolute;
    bottom: 20px;
    right: 20px;
  }
</style>
</head>
<body>
  <div id="content">
    <h1>공지사항</h1>
    <ul>
       <li>항목1</li>
       <li>항목2</li>
       <li>항목3</li>
       <li>항목4</li>
       <li>항목5</li>
    </ul>
    <button onclick="javascript:window.close();">닫기</button>
  </div>
</body>
</html>