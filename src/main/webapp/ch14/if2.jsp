<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조건문</title>
     <script>
      var userNumber = prompt("숫자를 입력하세요.");

      if (userNumber !== null) {
    	if(userNumber ==0) {
    		alert("입력수는 0이거나 입력되지 않았습니다.")
    	} else{
//     		if (userNumber % 3 === 0) 
//     	          alert("3의 배수입니다.");
//     	   else 
//     	          alert("3의 배수가 아닙니다.");	
    		 (userNumber % 3 === 0) ? alert("3의 배수입니다.") : alert("3의 배수가 아닙니다.");
    	}
      }
      else 
        alert("입력이 취소됐습니다.");      
    </script>
</head>
<body>
</body>
</html>