<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클레식 기타 커뮤니티</title>
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/header.css" type="text/css">
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="stylesheet" href="css/footer.css" type="text/css"> 
</head>
<body>
  <div id="wrap">
     <header>
        <a href="index.jsp"><img id="logo" alt="로고" src="images/logo.png"></a>
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
         <img id="login_title" alt="" src="images/ttl_login.png">
          <div id="input_button">
		    <ul id="login_input">
		      <li><input type="text"></li>
		      <li><input type="password"></li>
		    </ul>
		    <img id="login_btn" src="images/btn_login.gif">
		  </div> 
		  <div class="clear"></div>
		  <div id="join_search">
	       <img src="images/btn_join.gif">
	       <img src="images/btn_search.gif">
		  </div>
       </article>
       <article id="guestBook">
         <div id="guestBook_title">
           <img alt="" src="images/ttl_memo.gif">
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
       <img alt="" src="images/main_img.png">
       <section id="notice_free_youtube">
         <article id="notice"><!-- 공지사항 -->
           <div class="latest_title">
             <img class="latest_img" src="images/latest1.gif">
             <img class="more" src="images/more.gif">
             <div class="clear"></div>
           </div>
           <div class="latest_content">
             <img class="image" src="images/book_pen.gif">
             <ul class="list">
               <li>
                 <div class="subject">루바토 개편과 사이트 이용...</div>
                 <div class="date">2023-06-22</div>
                 <div class="clear"></div>
               </li>
               <li>
                 <div class="subject">루바토 개편과 사이트 이용...</div>
                 <div class="date">2023-06-22</div>
                 <div class="clear"></div>
               </li>
               <li>
                 <div class="subject">루바토 개편과 사이트 이용...</div>
                 <div class="date">2023-06-22</div>
                 <div class="clear"></div>
               </li>
               <li>
                 <div class="subject">루바토 개편과 사이트 이용...</div>
                 <div class="date">2023-06-22</div>
                 <div class="clear"></div>
               </li>
             </ul>
           </div>
         </article><!-- 공지사항 -->
         <article id="free"> <!-- 자유게시판 -->
           <div class="latest_title">
             <img class="latest_img" src="images/latest2.gif">
             <img class="more" src="images/more.gif">
             <div class="clear"></div>
           </div>
           <div class="latest_content">
             <img class="image" src="images/book_pen.gif">
             <ul class ="list">
                <li>
                  <div class="subject">까스통님의 선물인 보드카....</div>
                  <div class="date">2023-06-22</div>
                  <div class="clear"></div>
                </li>
                <li>
                  <div class="subject">까스통님의 선물인 보드카....</div>
                  <div class="date">2023-06-22</div>
                  <div class="clear"></div>
                </li>
                <li>
                  <div class="subject">까스통님의 선물인 보드카....</div>
                  <div class="date">2023-06-22</div>
                  <div class="clear"></div>
                </li>
                <li>
                  <div class="subject">까스통님의 선물인 보드카....</div>
                  <div class="date">2023-06-22</div>
                  <div class="clear"></div>
                </li>
             </ul>
           </div>
         </article><!-- 자유게시판 -->
         <article id="youtube"> <!-- 유투브 동영상 -->
         <div class="latest_title">
             <img class="latest_img" src="images/latest3.gif">
             <img class="more" src="images/more.gif">
             <div class="clear"></div>
           </div>
           <img id="youtube_img" src="images/bach.jpg">
         </article>
       </section>
     </section><!-- main section -->
     <div class="clear"></div>
     <footer>
       <img id="footer_logo" src="images/footer_logo.gif">
       <ul id="address">
          <li>서울시 강남구 서초로 1234 우: 12222</li>
          <li>TEL: 02-1111-3333  Email: master@korea.com</li>
          <li>COPYRIGHT (C) 루바토 ALL RIGHTS RESERVED</li>
       </ul>
       <ul id="footer_sns">
         <li><img alt="" src="images/facebook.gif"></li>
         <li><img alt="" src="images/blog.gif"></li>
         <li><img alt="" src="images/twitter.gif"></li>
       </ul>
     </footer>
  </div>
</body>
</html>