<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Web Programming</title>
 <link rel="stylesheet" href="../css/nodelist.css">
 <script type="text/javascript">
  function newRegister(){
	  /*item이라는 li태그를 만들고 subject라는 태그 안에 적혀 있는 값 받아서
	   새로은 리스트로 추가
	  */
	  var newItem = document.createElement("li");
	  var subject = document.querySelector("#subject"); //input 태그 선택
	  if(subject.value.length==0){
		  alert("주제를 입력하시오.");
		  subject.focus();
		  return false;
	  }
	  //텍스트 필드 값을 받아와서 그걸로 텍스트 노드 만들기
	  var newText = document.createTextNode(subject.value);
	  newItem.appendChild(newText);
	// 웹 문서에서 부모 노드 선택하기
	  var itemList = document.querySelector("#itemList");
	  //해당 태그에 하위 태그 추가해라
	  itemList.appendChild(newItem); // 새로 만든 요소 노드를 부모 노드에 추가
	  
	  subject.value="";
	  
	  //해당 리스트 항목을 클릭하면 그 항목을 삭제 하려고 함
	  var items = document.querySelectorAll("li");// 모든 항목 가져오기
	  //각 항목에 click 리스너 걸어주기
	  for(let i=0; i<items.length; i++){
		  items[i].addEventListener("click", function(){// 항목 클릭했을 때 실행할 함수
		  	if(this.parentNode)//부모노드 있다면
		  	  this.parentNode.removeChild(this);//자신의 부모노드로 올라가서 자식노드 삭제
		  });
	  }
  }
  function deleteItem(){
	  //모두 지우기
	  //지울때 li를 갖고 와서 배열에 담긴게 없으면 추가머저 하시오.
	  var items = document.querySelectorAll("li");
	  if(items.length ==0){
		  alert("주제를 먼저 추가 하시오.")
		  return false;
	  }
	  for(let i=0; i<items.length; i++){
		  items[i].parentNode.removeChild(items[i]);
	  }
  }
 </script>
</head>
<body>
  <div id="container">
    <h1>Web Programming</h1>
    <p>공부할 주제를 기록해 보세요</p>
    <form action="" method="post">
       <input type="text" id="subject" autofocus="autofocus" value="">
       <button 
       onclick="javascript:newRegister(); return false">추가</button> 
       <button 
       onclick="javascript:deleteItem(); return false">삭제</button>   
    <hr>
    <ul id="itemList"></ul>
    </form>
  </div>
</body>
</html>