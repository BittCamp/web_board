<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Array 객체의 메서드</title>
</head>
<body>
  <p>slice 메서드 사용하기</p>
	<script>
		// 추출한 요소로 배열 만듦, 기존 배열 변경안됨
		var colors = ["red", "green", "blue", "white", "black"];
		var colors2 = colors.slice(2); //인덱스 2부터 끝까지
		document.write("slice결과: "+colors2);
		document.write("<br>"); 
		document.write("원래 배열: "+ colors);
		document.write("<br>"); 
		var colors3 = colors.slice(2,4);  // 인덱스 2,3
		document.write("slice결과: "+colors3);
		document.write("<br>"); 
		document.write("원래 배열: "+colors);
	</script>
</body>
</html>