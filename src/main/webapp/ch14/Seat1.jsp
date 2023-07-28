<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>자리 배치도</title>
    
</head>
<body onload="setTextContent(cnt);">
  <h1>자리 배치도</h1>
 <script>
    var memNum = prompt("입장객은 몇 명인가요?");  // 전체 입장객 
    var colNum = prompt("한 줄에 몇 명씩 앉습니까?");  // 한 줄에 앉을 사람

    if (colNum!=0 && memNum % colNum === 0) 
      rowNum = parseInt(memNum / colNum);
    else
      rowNum = parseInt(memNum / colNum) + 1;

    var cnt= "모두 " + rowNum + "개의 줄이 필요합니다.";
    document.write(cnt);
  </script>
</body>
</html>