/**
 * 
 */
/*$().redy(function(){
	
})*/
$(function(){
	chk1=false; //validate
	chk2=false;  //pw
  $('#submit1').click(function(){
    var pw1 = $('.pw1').val();
    var pw2 = $('.pw2').val();
     if(pw1!="" && pw1.trim().length>0 && pw2!="" && pw2.trim().length>0){
     if(pw1 != pw2){
       //alert('비밀번호가 일치하지 않습니다.');
        $('font[class=pwMsg]').text('');
		$('font[class=pwMsg]').attr('color','red');
		$('font[class=pwMsg]').text('비밀번호가 일치하지 않습니다.');
        $('.pw2').focus();
        chk2 = false;
       return false	 //서브밋 불가	 
	 }else{
		$('font[class=pwMsg]').text('');
		$('font[class=pwMsg]').attr('color','blue');
		$('font[class=pwMsg]').text('비밀번호가 일치합니다.');
		chk2 = true;
	 }
   }
	if(valichk()){ // 누군가 빈칸 걸린것임
	    chk1 = false;
		return false; //리턴을 하니 else 필요 없다.
	}
	
	if(chk1 && chk2){
	   $('form').submit();
	 }else{
		 return false;
	 }
  });
  //id중복채크 ajax
  $('#idchk').on("propertychange change input paste",function(){
	  $.ajax({
		  async:true,
		  type: 'post',
		  url:"idCheck.do",
		  dataType:'json', //json 데이터는 키와 값 형태로 이루짐
		  data:{"id":$('#idchk').val()},
		  success: function(cnt){
			  if(cnt>0){//이미 있음
				  $('font[id=msg]').text('');
				  $('font[id=msg]').attr('color','red');
				  $('font[id=msg]').text('이미 존재하는 아이디');
		          $('#idchk').focus();  
			  }else{ //사용가능한 id
				  $('font[id=msg]').text('');
				  $('font[id=msg]').attr('color','blue');
				  $('font[id=msg]').text('사용 가능한 아이디');
		          $('#idchk').focus();  
			  }
		  },
			error : function(e){
				//alert("error: "+"에러났어요");
			}
	  });
    }
  );
  
  
});

function valichk(){
	var flen = $('form .chk').length;
	 for(let i = 0; i<flen; i++){
		 if($('.chk').eq(i).val()=="" || $('.chk').eq(i).val()==null || 
		 $('.chk').eq(i).val().trim() ==""){
		   alert($('.chk').eq(i).attr("title")+"은/는 필수 입력 항목입니다.");
		   $('.chk').eq(i).focus();
		   return true;	 
		 }
	 }
	return false;
}