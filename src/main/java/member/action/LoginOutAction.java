package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginOutAction implements CommandAcion {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//세션은 받아서
	   HttpSession session = request.getSession(false);
	   if(session.getAttribute("uid")!=null)
		   session.removeAttribute("uid");;
	 // 모두 삭제
	   session.invalidate();
	   session = null;
//	   response.setHeader("Pragma", "no-cache"); 
//	   response.setHeader("Cache-Control", "no-cache"); 
//	   response.setHeader("Cache-Control", "no-store"); 
//	   response.setDateHeader("Expires", 0L); 
		return "login.do";
	}
}
