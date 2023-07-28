package member.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
   
   // 인스턴스 객체를 선언 private
   private static MemberDAO instance = new MemberDAO();

@SuppressWarnings("unused")
 private Connection getConnection() throws ClassNotFoundException,
                                                  SQLException {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn= 
	   DriverManager
	   .getConnection("jdbc:mysql://localhost:3306/boarddb","root","12341234!");
	 return conn;
   }
   private MemberDAO() {}	
   
   public static MemberDAO getInstance() {
	   return instance;
   }
   
   public boolean loginAction(String id, String passwd)
		     throws ClassNotFoundException, SQLException {
	   boolean result = false;
	   Connection conn =null;
	   PreparedStatement pstmt =null;
	   ResultSet rs = null;
	   try {
		  String sql = "select count(*) from member where id=? and passwd=?";
     	  conn = getConnection();
     	  pstmt = conn.prepareStatement(sql);
     	  pstmt.setString(1, id);
     	  pstmt.setString(2, passwd);
     	  rs = pstmt.executeQuery();
     	  if(rs.next()) {//결과를 받아온게 있으면
     		  int r = rs.getInt(1);
     		  if(r==0) result = false;
     		  else if (r==1) result = true;
     	  }
	   }catch (Exception e) {
		   System.out.println(e.getMessage());
	   }finally {
		   if(rs!=null)rs.close();
		   if(pstmt!=null)pstmt.close();
		   if(conn!=null)conn.close();
	   }
	   
	   return result;
   }
	public List<MemberDTO> getMemberList()
			 throws ClassNotFoundException, SQLException {
		 Connection conn =null;
		 PreparedStatement pstmt =null;
		 ResultSet rs = null;
		// 데이터베이스 연결
		 //쿼리 문 만들고
		 // 데이터베이스에서 받아온 ResultSet을 while을 통해서 하나씩 읽어서 DTO에 저장하고
		 //리스트에 추가하고 리턴
		  List<MemberDTO> list = null;//선언
		 try {
			 conn =getConnection();
			 String sql = "select id, name, passwd \n";
			        sql += "from member";
             pstmt = conn.prepareStatement(sql);
             rs = pstmt.executeQuery();
              list = new ArrayList<MemberDTO>();//생성
             //여러개 가져오면 while
             while(rs.next()) {// 더이상 없을때까지
            	 //하나의 레코드를 저장하기 위한 객체
               MemberDTO dto = new MemberDTO();
                //dto에 id를 저장하는데 setId, id 정보는 rs에 있고 데이터베이스의 필드명 id
               // rs.getString("필드명") , rs.getInt("필드명")
            	 dto.setId(rs.getString("id"));
            	 dto.setName(rs.getString("name"));
            	 dto.setPasswd(rs.getString("passwd"));
            	 //리스트에 추가
            	 list.add(dto);
             }
		 }catch(Exception e) {
			 System.out.println(e.getMessage());
		 }finally {
			   if(rs!=null)rs.close();
			   if(pstmt!=null)pstmt.close();
			   if(conn!=null)conn.close();
		   }
		return list;
	}
	public int idCheck(String id) throws ClassNotFoundException, SQLException {
		   Connection conn =null;
		   PreparedStatement pstmt =null;
		   ResultSet rs = null;
		   int cnt=0;
		   try {
			  String sql = "select count(*) from member where id=? ";
	     	  conn = getConnection();
	     	  pstmt = conn.prepareStatement(sql);
	     	  pstmt.setString(1, id);
	     	  rs = pstmt.executeQuery();
	     	  if(rs.next()) {//결과를 받아온게 있으면
	     		  cnt = rs.getInt(1);
	     	  }
		   }catch (Exception e) {
			   System.out.println(e.getMessage());
		   }finally {
			   if(rs!=null)rs.close();
			   if(pstmt!=null)pstmt.close();
			   if(conn!=null)conn.close();
		   }
		return cnt;
	}
	public void insertMember(MemberDTO member) 
			throws ClassNotFoundException, SQLException{
	   //컨넥션 선언, 쿼리실해용 객체 선언
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		//try 안에서 실행(저장)
		try {
			String sql = "insert into member(id, name, passwd) \n";
			sql+= "values(?,?,?)";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPasswd());
			pstmt.execute(); // pstmt.executeUpdate();			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			if(pstmt !=null) pstmt.close();
			if(conn!=null)conn.close();
		}
	}
}
