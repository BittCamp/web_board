<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>1부터 n까지 더하기</title>
<script type="text/javascript">
   function calcSum(n){
	   var sum = 0;
	   for(let i =1; i<n+1; i++){
		   sum+=i;
	   }
	   document.write("1부터 "+n+"까지 더하면 "+ sum);
   }
  
   function onloadf(){
	   var userNumber = prompt("얼마까지 더할까요?");
	   if(Number(userNumber)){
		   if (userNumber !== null) 
			    calcSum(parseInt(userNumber));
	   }else{
		   alert('숫자 입력해라 말좀들어');
		   onloadf() 
	   }
	   //if(isNaN(parseInt(userNumber)))
	// 아래 소스는 '취소' 버튼을 클릭했을 때 null이 아닌 NaN을 반환함. 
    // var userNumber = parseInt(prompt("얼마까지 더할까요?"));
    // if (userNumber != null) calcSum(userNumber);
   }
  
</script>
</head>
<body onload="javascript:onloadf();">

</body>
</html>