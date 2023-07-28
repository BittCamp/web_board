package member.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.MemberDAO;

public class LoginProAction implements CommandAcion {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		/* Session이라는 객체를 만들어서 사용
		  클라이언트와 서버가 연결되는 경우 연결관계를 설정하고 알고 있는 상태를 session이 연결되었다.
		  연견되어 있는 상태이면 서버가 그 클라이언트를 인정하는 상태
		  이름-값의 형태로 저장
		  세션 설정시간을 설정해 주기도 함(디폴값은 30분)
		  setAttribut가 있고, getAttribute있음
		  세션 종료 모든 세션 정보를 삭제(invalidate())
		  특정 세션만을 삭제(removeAttribute)
		  getAttributeNames() 모든 속성의 이름을 가져와라		  
		     */
		// 데이터베이스에 접근해서 결과를 받아오게... DAO
		/* 데이터베이스 일하는 객체 생성해서 거기에서 내가 시키고 싶은 메소드 호출
		   DAO 객체(인스턴스)를 얻고, 거기에서 id와 passwd가 맞는 지 확인하는 메소드 호출 
		  */
		/*모델을 통해서 데이터베이스와 데이터전송 객체를 사용해서 결과를 받기 */ 
	    //login이 성공했을때
		      HttpSession session = request.getSession(false);
		String view = null;
		MemberDAO dao=MemberDAO.getInstance();
		// id, 패드워드 맞는지 확인해,라는 메소드를 실행
		 try {
			boolean result =  dao.loginAction(id, passwd);
			if(result) {
				//세션을 설정
				session.setAttribute("uid", id);
				view="main.do";
			}else{
				session =null;
				view = "member/login.jsp";// 다시 로그인이라 주소가 안바뀌어도 되어서 그냥둠
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return view;
	}

}
