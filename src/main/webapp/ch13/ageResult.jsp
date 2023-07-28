<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나이 계산하기</title>
<script type="text/javascript">
   var currentYear = 2023;//선언과 동시에 저장
   var birthYear;//선언
   var age;//선언
   birthYear = prompt("태어난 연도를 입력하세요. (YYYY)", ""); //값 저장
   age = currentYear - birthYear + 1;//계산해서 저장
   document.write(currentYear + "년 현재<br>");
   document.write(birthYear + "년에 태어난 사람의 나이는 " + age + "세입니다.");
   document.write("ggg");
   document.
</script>
</head>
<body>

</body>
</html>