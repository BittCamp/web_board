package member.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.CommandAcion;
import member.model.MemberDAO;
import member.model.MemberDTO;

public class InsertMemProAtion implements CommandAcion {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 화면에서 받아온 데이터 DTO에 담아서 전달
		MemberDTO member = new MemberDTO();
		// String id = request.getParameter("id");
		member.setId(request.getParameter("id"));
		member.setName(request.getParameter("name"));
		member.setPasswd(request.getParameter("passwd"));
		//데이터베이스 처리하는 애 가져오고 
		MemberDAO dao = MemberDAO.getInstance();
		//일시키는데 받아온 데이터 넘기고 시키기
		try {
			dao.insertMember(member);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return "memberList.do";
	}

}
