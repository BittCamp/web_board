<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content = "ie=edge">
<title>Screen Object</title>
  <style type="text/css">
    #container{
      width: 400px;
      margin: 10px auto;
    }
    .display {
			margin-top:10px;
			padding:10px;
			border:1px solid #222;
			box-shadow: 1px 0 1px #ccc;			
		}
	p {
		font-size:1em;
	}
  </style>
</head>
<body>
   <div id="container">
      <h2>Screen 객체</h2>
      <div class="display">
          <script type="text/javascript">
            document.write("<p><b>screen.availWidth : </b>" + screen.availWidth + "</p>");
			document.write("<p><b>screen.availHeight : </b>" + screen.availHeight + "</p>");
			document.write("<p><b>screen.width : </b>" + screen.width + "</p>");
			document.write("<p><b>screen.height : </b>" + screen.height + "</p>");
          </script>
      </div>
   </div>
</body>
</html>