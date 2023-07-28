<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
  *{margin: 0 auto;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 $().ready(function(){
	 
 });
</script>
</head>
<body>
<form action="/webBoard/loginAction.do" method="post">
  <table>
    <tbody>
       <tr><th>아이디</th>
           <td><input type="text" name="id" size="10" required="required"></td> 
       </tr>
       <tr><th>비밀번호</th>
           <td><input type="password" name="passwd" size="10" required="required"></td> 
       </tr>
       <tr><td colspan="2">
             <input type="submit" value="전송" >
       </td></tr>
    </tbody>
  </table>
</form>
</body>
</html>