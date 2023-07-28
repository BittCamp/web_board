<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<!-- 
Ajax(Asynchronous Javascript And XML)통신
비동기 자바 크립트와 Xml을 활용
- 자바 스크립트를 이용해 서버와 브라우저가 비동기 방식으로 데이터를 교환할 수 있는 통신방식 
- 클라이언트와 서버간 XML 데이터를 주고 받는 기술
- 최근 XML이 무거운 통신이라서 JSON이라는 텍스트 형태의 전송방식을 사용함
- JSON은 키와 값의 형태를 가지고 있고 맵(Map)과 유사한 형태를 갖고 있음

비동기통신이란
웹페이즈를 리로드(reLoad)하지 않고 데이터를 불러오는 방식
웹페이지에서 기타 코드를 요청할 경우, 웹페이지를 리로드하면서 불필요한 리소스가 낭비되는데
비동기방식을 이용하면 필요한 데이터만 불러오기 때문에 리소스 낭비를 줄일 수 있음
Ajax통시는 XMLHttpRequest객체를 통해서 request(요청)함
Json이나 XML형태로 필요한 데이터만 받아서 갱신해 주기 때문에 자원과 시간을 줄일 수 있다.

Ajax 통신의 장점
- 웹페이지 속도향상
- 서버 처리가 완료 될때가지 지연없이 바로 처리 가능
- 기존 웹에서 불가능했던 UI 가능하게 해줌

Ajax 통신의 단점
- 페이지 이동 없는 통신으로 보안상 문제가 발생할 수도 있어서 이때 보안상 문제되는 데이터는 전송하지 않게 함
- 연속으로 데이터 요청을 하면 서버의 부하를 증가 시킬 수도 있음(너무 많으면)
- 히스토리 관리가 안되서 문제점을 찾을 때 어려움이 존재 함
- Script로 작성되어서 디버깅이 용이하지 않음
- jQuery이용한 Ajax방식
- Json은 Key, value형태인데 value에 다시 json형태로 값을 지정할수도 있음
$.ajax({
  type: 'post',// (get, post, put 등과 같은 전송 방식 RestAPI 전송방식중에서 빠르게 처리하는 서비스방식)
  url: ./AjaxResponse.jsp // 비동기로 요청할 페이지 처리를 할 페이지
  async: true, // 비동기여부(default: true)
  header:{
   "Content-type":"application/json", //json형태
   "X-HTTP-Method-Override":"POST"
  }, 
  dataType:'text' //(html, xml, json, text, object 등이 들어올 수 있음)
  data: JSON.stringify({ //보낼데이터 Object, String, Array 
    "no":no,
    "name":name,
    "nick":nick
  }),
  success: function(result){//처리 결과가 성공했을 때 실행할 함수를 정의 200
     //consol.log(result);
     //alert(result);
  },
  error: function(request, status, error){//결과가 실패 했을 때 실행할 함수를 정의
     //consol.log(result);
     //alert(result);
  }
})
 -->
<head>
<meta charset="UTF-8">
<title>Ajax 연습</title>
<script src="../jquery/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//id="listButton"인 태그에 click하면 function getMemberList() 실행
	$("#listButton").click(getMemberList); 
//     $("#listButton").on('press change',getMemberList); 
});
function getMemberList(){
    $.ajax({
        url:"./list.jsp",                    //list.jsp에 AJAX요청
        success:function(data){//잘 갔다왔다면 성공
        	alert(data.result);
         },
        error:function(request,status, error){
        	alert(2+"::"+request.status);
        	alert(2+"::"+request.responseText);
        	alert(2+"::"+error); //서버상에 에러가 없을 때는 안나옴
        } 
    });    
}
</script>
</head>
<body>
 <a href="#" id="listButton">회원리스트</a><br/>
<!--  <input type="text" id="listButton"> -->
</body>
</html>