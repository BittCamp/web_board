<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>팩토리얼 계산하기</title>
	<style type="text/css">
		body {
			padding-top:20px;
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		function loader(){
				var n = prompt("숫자를 입력하세요.","10");
				var dataArea = document.getElementById('data');
				var msg = "";
				if (n !== null) {  // '취소' 버튼을 누르지 않았는지 체크
					var nFact = 1;  // 결과 값
					var i = 1;  // 카운터
					
					while(i <= n) {
						nFact *= i;
						i++;
					}
					msg = n + "! = " + nFact;  // 결과 값을 표시할 문자열 
				}
				else
					msg = "값을 입력하지 않았습니다.";
				dataArea.innerHTML = "<h1 style='text-align:center'>while문을 사용한 팩토리얼 계산</h1>"
				+"<p style='text-align: center;'>"+msg+"</p>";
// 				document.write(msg);  // 결과 표시
				document.write(dataArea.innerHTML);  // 결과 표시
		}
	</script>
</head>
<body onload="javascript: loader();">
    <div id="data">
 	 <h1 >while문을 사용한 팩토리얼 계산</h1>
    </div>
</body>
</html>