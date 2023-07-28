<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>confirm</title>
<script type="text/javascript">
  var yORn = confirm("정말 끝내겠습니까");
  if(yORn){
	  alert("예를 눌렀습니다."+yORn);
  }else{
	  alert("아니오를 눌렀습니다."+yORn);
  }
</script>
</head>
<body>

</body>
</html>