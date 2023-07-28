<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>DOM</title>
	<link rel="stylesheet" href="../css/product.css">
    <script type="text/javascript">
     function setfunc(){
	   	 var cup = document.querySelector("#cup");
	   	 var smallPics = document.querySelectorAll(".small");
	   	 // 3개의 이미지를 모두 click 이벤트를 하면 함수를 호출할 수 있게 속성을 넣어두기
	   	 for(let i=0; i<smallPics.length; i++)
	   		smallPics[i].addEventListener("click",chagePic)
     }  
	 function chagePic(){
		 var newPic = this.src;// 현재 호출한 녀석의(자기자신)src
		 cup.setAttribute("src", newPic);
	 }
     function displayView() {
    	  var view = document.getElementById("view");
    	  var t = view.innerText
    	  if(t=== "상세 설명 보기")
    	   {
    		 document.querySelector("#detail").setAttribute("style", "display:block") 
    		 view.innerText="상세 설명 닫기"
    	   }
    	 else {
    		 document.querySelector("#detail").setAttribute("style", "display:none") 
    		 view.innerText="상세 설명 보기"
    	 }
		//if(상세보기열기인지 아닌지 )
    	//id display인거 선택자...
		//그 안에 스타일, display none = block
		//상세보기 열기 --> 닫기
		//아니면 
		//id display인거 선택자...
		//그 안에 스타일, display = none
		//상세보기 닫기 --> 열기
	 }	
		
	</script>
</head>
<body onload="setfunc()">
 <div id="container">
 	<h1 id="heading">에디오피아 게뎁</h1>
    <div id="prod-pic">
		<img src="../images/coffee-pink.jpg" alt="에디오피아 게뎁" 
		   id="cup" width="200" height="200" 
		     onclick="javascript:displaySrc();">
			<div id="small-pic"> 
				<img src="../images/coffee-pink.jpg" class="small">
				<img src="../images/coffee-blue.jpg" class="small">
				<img src="../images/coffee-gray.jpg" class="small">
			</div>
	  </div>
	  <div id="desc">
	        <ul>
              <li>상품명 : 에디오피아 게뎁</li>
		      <li class="bluetext">판매가 : 9,000원</li>
		      <li>배송비 : 3,000원<br>(50,000원 이상 구매시 무료)</li>
		      <li>적립금 : 180원(2%)</li>
		      <li>로스팅 : 2019.06.17</li>
  		    </ul>				
		    <button>장바구니 담기</button>
		    <a href="#" id="view" onclick="javaScript:displayView();">
		    상세 설명 보기</a>	
	  </div>
	  <div id="detail">
	    <hr>
		<h2>상품 상세 정보</h2>
	    <ul>
	       <li>원산지 : 에디오피아</li>
	       <li>지 역 : 이르가체프 코체레</li>
	       <li>농 장 : 게뎁</li>
	       <li>고 도 : 1,950 ~ 2,000m</li>
	       <li>품 종 : 지역 토착종</li>
	       <li>가공법 : 워시드</li>
	    </ul>
	    <h3>Information</h3>
	    <p>2차 세계대전 이후 설립된 게뎁농장은 유기농 인증 농장으로 
	       여성의 고용 창출과 지역사회 발전에 기여하며 3대째 이어져 
	       내려오는 오랜 역사를 가진 농장입니다. 게뎁 농장은 SCAA 인증을 
	       받은 커피 품질관리 실험실을 갖추고 있어 철처한 관리를 통해 스페셜티커피를 생산합니다.</p>	
	    <h3>Flavor Note</h3>
	    <p>은은하고 다채로운 꽃향, 망고, 다크 체리, 달달함이 입안 가득.</p>   
	  </div>
 </div>
</body>
</html>