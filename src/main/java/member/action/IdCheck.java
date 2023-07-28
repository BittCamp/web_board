package member.action;

import java.sql.SQLException;

import member.model.MemberDAO;

public class IdCheck {

	public int idCheck(String id) throws ClassNotFoundException, SQLException {
		//데이터베이스 access 객체
		//id 있는지 확인
		return MemberDAO.getInstance().idCheck(id);
	}

}
