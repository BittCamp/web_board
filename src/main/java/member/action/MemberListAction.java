package member.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.MemberDAO;
import member.model.MemberDTO;

public class MemberListAction implements CommandAcion {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//데이터베이스에서 모든 회원정보를 받아와서 
		MemberDAO dao = MemberDAO.getInstance();
		//전송용 가방인 DTO안에 넣어서 리스트 안에 저장
		List<MemberDTO> members=null;
		try {
			//DAO에게 해당 리스트 갖고오라고 시킴
			members = dao.getMemberList();
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		request.setAttribute("members", members);// 저장
		return "member/list.jsp";
	}

}
