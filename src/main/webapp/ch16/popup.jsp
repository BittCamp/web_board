<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업연습</title>
<script type="text/javascript">
  function pupupw(){
	  //오픈될때 열리는 파일명, 오픈 윈도우 이름, 오픈윈도의 옵션
	  var newWin = window.open("notice.jsp", "pop", 
			  "width=500, height=400, left=100, top=200");
	  if(newWin==null){//팝업차단되어 있으면 알림창
		alert("팝업이 차단되어 있습니다. 팝업 차단을 해제해 주세요.");  
	  }
	  newWin.moveBy(100,100);
  }
</script>
</head>
<body >
<p style="text-align: center;">버튼을 누르면 팝업창이 표시됩니다.</p>
<div style="text-align: center;">
  <button onclick="javascript:pupupw();">팝업열기</button>
 <button onclick="javascript:history.back();">뒤로</button>
</div>
</body>
</html>