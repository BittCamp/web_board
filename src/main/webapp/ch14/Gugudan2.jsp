<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>구구단 - for문</title>
	<link rel="stylesheet" href="../css/gugudan.css">
</head>
<body>
	<h1>구구단</h1>
	<script>
		var i, j;

		for (i = 1; i <= 9; i++) {
			document.write("<div>");
			document.write("<h3>" + i + "단</h3>");
			for (j = 1; j <= 9; j++) {
				document.write(i +" X " + j + " = " + i*j + "<br>");
			}
			document.write("</div>");
		}
	</script>
</body>
</html>