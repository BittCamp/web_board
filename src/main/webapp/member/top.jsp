<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>        
<style type="text/css">
ul{
	list-style-type: none;
}
li{
   display: inline-block;
   margin: 12px 30px 0 50px;
   font-size:13px;
 }
.container li a:link {
    text-decoration:none;
    color:black;
}
.container li a:visited {
    text-decoration:none;
    color:black;
}
 .container li a:active {
    text-decoration:none;
    color:black;
}
.container{
   width: 500px;
   margin: 0 auto;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
	  $('#logout').click(function(){
	   	location.href = "./logout.do"  
	  }
	 );
  });
</script>
</head>
<%-- <c:if test="${session ==null}"> --%>
<!--      <script type="text/javascript"> -->

<!--      </script> -->
<%-- </c:if> --%>
<c:choose>
<c:when test="${uid==null or fn:length(uid)==0}">
     <script type="text/javascript">
        alert("세션이 없거나 종료되었습니다.\n 로그인 하시오")
        location.href = "login.do";
     </script>
</c:when>
<c:when test="${uid!=null and fn:length(uid)>0}">
   <p style="text-align: right;"><c:out value="${uid}님 반갑습니다."/>
      <button id="logout">로그아웃</button>
   </p>
	<div class="container">
	  <ul>
	      <li><a href="insertMem.do">회원등록</a></li>
	      <li><a href ="memberList.do">회원리스트</a></li>
	  </ul>
	</div>
	  <hr style="margin-top: 10px; margin-bottom: 10px;">
</c:when>
</c:choose>
  
