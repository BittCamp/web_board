<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클레식 기타 커뮤니티</title>
<link rel="stylesheet" href="../css/common.css" type="text/css">
<link rel="stylesheet" href="../css/header.css" type="text/css">
<link rel="stylesheet" href="../css/main.css" type="text/css">
<link rel="stylesheet" href="../css/footer.css" type="text/css">
</head>
<body>
  <div id="wrap">
     <header>
        <a href="index.jsp"><img id="logo" alt="로고" src="../images/logo.png"></a>
        <nav id="top_menu">
          HOME  |  LGOIN  |   JOIN  |  NOTICE
        </nav>
        <nav id="main_menu">
          <ul>
            <li><a href="free/BoardList.jsp">자유게시판</a></li>
            <li><a>기타연주</a></li>
            <li><a>공동구매</a></li>
            <li><a>연주회 안내</a></li>
            <li><a>회원 게시판</a></li>
          </ul>
        </nav>
     </header>
     <aside>
       <article id="login_box">
        <%@ include file="session.jsp" %>
       </article>
       <article id="guestBook">
         <div id="guestBook_title">
           <img alt="" src="../images/ttl_memo.gif">
         </div>
         <ul>
            <li>안녕하세요!</li>
            <li>안녕하세요!</li>
            <li>안녕하세요!</li>
            <li>안녕하세요!</li>
         </ul>
       </article>
     </aside>
     <section id="main">
       여기는 자유게시판
     </section><!-- main section -->
     <div class="clear"></div>
     <footer>
       <img id="footer_logo" src="../images/footer_logo.gif">
       <ul id="address">
          <li>서울시 강남구 서초로 1234 우: 12222</li>
          <li>TEL: 02-1111-3333  Email: master@korea.com</li>
          <li>COPYRIGHT (C) 루바토 ALL RIGHTS RESERVED</li>
       </ul>
       <ul id="footer_sns">
         <li><img alt="" src="../images/facebook.gif"></li>
         <li><img alt="" src="../images/blog.gif"></li>
         <li><img alt="" src="../images/twitter.gif"></li>
       </ul>
     </footer>
  </div>
</body>
</html>