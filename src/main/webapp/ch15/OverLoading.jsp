<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>변수 호이스팅</title>
</head>
<body>
  <script>		 
function sum() {
    var result = 0;
    for (var i = 0; i < arguments.length; i++) {
        result += arguments[i];
    }
    alert(result);
}
  </script>
<button onclick="javascript:sum(2,3);">함수호출1</button>
<button onclick="javascript:sum(2,3,4);">함수호출2</button>
<button onclick="javascript:sum(2,3,5,6);">함수호출3</button>
</body>
</html>