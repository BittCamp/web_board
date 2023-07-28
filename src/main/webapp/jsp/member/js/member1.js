/**
 * member1의 자바스크립트
 */
//전역변수
chk =false;
//id와 이름이 비어 있지 않게 확인
function validate1(){
  var c = document.getElementById("cnt")
  if(c.value==1){
	  alert("아이디 중복입니다.")
	  chk = false;
	  }
  else if (c.value ==0){
    chk =true;	
	 }  
  if(!chk){
    alert("아이디 중복체크 하시오")
    return false;
  } 
 // 아이디 중복 채크 하고 전송
 var formTag =  document.querySelector("#regData");
 var inputTag = document.querySelectorAll("input");
  for(let i=0; i<inputTag.length; i++){
	  if(inputTag[i].value.length==0){
		alert("아이디와 이름을 확인하여 입력하시오");
		return false;  
	  } 
  }
  formTag.submit();
}
function idCheck(){
   var id = document.getElementById("id");
   if(id.value.trim().length ==0){
    alert("id 입력하시오");
    id.focus();
    chk = false;
    return false
   }else{
	   //팝업으로 아이디 채크 하는 불러주고 결과를 받기
	 window.open("DbIdchek.jsp?id="+id.value,
	                             "popup","width=500,height=200");
         return;                    
   }
}
	
