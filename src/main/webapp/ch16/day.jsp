<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>독서 챌린지</title>
  <style type="text/css">
    #container{
    margin: 50px auto;
    width: 300px;
    height: 300px;
    border-radius: 50%;
    border: 2px double #222;
    background-clor: #d8f0fc;
    text-align: center;
    }
    h1{
    margin-top: 80px;
    }
    .accent{
     font-size: 1.8em;
     font-weight: bold;
     color: blue;
    }
  </style>
   <script>
   function loadf(){
	   
    var now = new Date("2023-07-03");       // 오늘 날짜를 객체로 지정
    var firstDay = new Date("2023-06-01");   // 시작 날짜를 객체로 지정

    var toNow = now.getTime();         // 오늘까지 지난 시간(밀리 초)
    var toFirst = firstDay.getTime();  // 첫날까지 지난 시간(밀리 초) 
    var passedTime = toNow - toFirst;  // 첫날부터 오늘까지 지난 시간(밀리 초)

    passedTime = Math.round(passedTime/(1000*60*60*24));  // 밀리 초를 일 수로 계산하고 반올림
    document.querySelector('#result').innerText = passedTime;
   }
  </script> 
</head>
<body onload="javascript:loadf();">
  <div id="container">
     <h1>책 읽기</h1>
     <P><span id="result" class="accent"></span>일 연속으로 <br>책 읽기를 달성했군요.</P>
     <P>축하합니다.</P>
  </div>
</body>
</html>