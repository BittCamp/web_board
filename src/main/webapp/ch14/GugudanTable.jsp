<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>구구단 - for문</title>
	<link rel="stylesheet" href="../css/gugudan-table.css">
<body>
	<h1>구구단</h1>
	<script>
		var i, j;

		for (i = 1; i <= 9; i++) {
			document.write("<table>");
			document.write("<tr><th>" + i + "단</th></tr>");
			
			for (j = 1; j <= 9; j++) {
				document.write("<tr><td>" + i +" X " + j 
						+ " = " + i*j + "</td></tr>");
			}
			document.write("</table>");
			if(i%3==0)document.write("<div class='clear'></div>");
		}
	</script>
</body>
</html>