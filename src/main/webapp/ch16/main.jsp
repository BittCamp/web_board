<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>팝업창 열기</title>
</head>
<body>
  <p>문서를 열면 팝업창이 표시됩니다.</p>
   <script type="text/javascript">
     popWin = window.open("doit_event.jsp","popup", "width=750, height=600");
     popWin.opener = self; //popWin 객체를 만든 부모가 자신(self)이라고 알려줌
   </script>
</body>
</html>