<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>지금 몇시인고?</title>
    <style type="text/css">
     body{ font-size: 2em;
           text-align: center;
     }
    </style>
    <script type="text/javascript">
        var now = new Date();
        document.write("현재시간은: "+now+"<br>");
        document.write("현재시간은: "+now.toLocaleString());
    </script>
</head>
<body>

</body>
</html>