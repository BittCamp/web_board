<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Function - Variable</title>
</head>
<body>
  <script>
    function calcSum(n) {
      sum = 0;
      for(let i = 1; i < n + 1; i++) {						
        sum += i;	
      }            
    }    
    calcSum(10);    
    console.log(sum);
  </script>
</body>
</html>