package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction implements CommandAcion {

	@Override
	public String requestPro(HttpServletRequest request, 
			  HttpServletResponse response) throws ServletException, 
	                                               IOException {
		// 데이터베이스 통해서 로그인이 맞는 지 확인 하고
		//회원이 맞으면 main.jsp
		//틀리면 다시 로그인
		return "member/login.jsp";
	}

}
