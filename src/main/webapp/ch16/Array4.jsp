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
  <p>splice 메서드 사용하기</p>
	<script>
    // 인수가 1개일 경우
    var numbers = [1, 2, 3, 4, 5];
    var newNumbers = numbers.splice(2);
    document.write("반환된 배열 : " + newNumbers + "<br>" );
    document.write("변경된 배열 : " + numbers );
    document.write("<hr>");

    // 인수가 2개일 경우
    var study = ["html", "css", "web", "jquery"];
    // 2번 방에서 1개
    var newStudy = study.splice(2,1);
    document.write("반환된 배열 : " + newStudy + "<br>");
    // Web 배고 나머지 남음
    document.write("변경된 배열 : " + study);
    document.write("<hr>");

    // 인수가 3개 이상일 경우
    //2번방에서 1개 빼고 그자리에  js 교체["html", "css", "jquery"];
    var newStudy2 = study.splice(2, 1, "js");
    document.write("반환된 배열 : " + newStudy2 + "<br>");
    document.write("변경된 배열 : " + study);
	</script>
</body>
</html>