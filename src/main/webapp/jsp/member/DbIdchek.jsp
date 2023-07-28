<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn= 
 DriverManager.getConnection("jdbc:mysql://localhost:3306/boarddb","root","1234"); 
 PreparedStatement pstmt =null;
 ResultSet rs = null;
 if(conn!=null){
	 String uid = request.getParameter("id");
	 String sql = "select count(id) as cnt from member where id = ?";
	 pstmt = conn.prepareStatement(sql);
	 pstmt.setString(1, uid);
	 rs = pstmt.executeQuery();
	 if(rs.next()){
		 if(rs.getInt("cnt")!=0) request.setAttribute("cnt", 1);
		 else request.setAttribute("cnt", 0);
	 }
 }else{
	 out.println("연결실패");
 }
 if(rs !=null) rs.close();
 if(pstmt!=null)pstmt.close();
 if(conn!=null) conn.close();
 %>
 <input type="text" value="" id="pid" readonly="readonly"/>
 <input type="button" value="중복채크"  onclick="javascript:check()"/>
 <script type="text/javascript">
 //오프너의 id를 받아서 저장 팝업에 저장
 document.getElementById("pid").value = opener.document.getElementById("id").value
 function check(){
		var c = <%=request.getAttribute("cnt")%>
		if(c==1){
			alert("중복된 아이디 입니다.")
			opener.document.getElementById("id").value="";
			opener.document.getElementById("na").value="";
		}else if(c==0){
		   alert("사용가능한 아이디입니다.")
		}
		opener.document.getElementById("cnt").value=c;
		window.close();
 }
</script>
