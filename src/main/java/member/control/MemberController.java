package member.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.CommandAcion;
import member.action.IdCheck;
import member.action.InsertMemProAtion;
import member.action.InsertMemberAction;
import member.action.LoginAction;
import member.action.LoginOutAction;
import member.action.LoginProAction;
import member.action.MemberListAction;

/**
 * Servlet implementation class MemberController
 */
//@WebServlet("/member")
@WebServlet(//확장자가 .do인 요청은 모두 이리로 와라.
		name = "MemberController",
		urlPatterns = {"*.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		requestPro(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//해당 request받아서 해당 업무로직을 생성하고 호출하고..
		 String command = request.getRequestURI();
         if (command.indexOf(request.getContextPath()) == 0) {
            command = command.substring(request.getContextPath().length());
         }
         if(command.equals("/idCheck.do")) { //idChek
        	 String id = request.getParameter("id");
        	 //idCheck하는 클래스 객체 생성
        	 IdCheck idCheck = new IdCheck();
        	 //cnt 초기화.
        	 int cnt=0;
        	 try {
        		 //채크하는 메소드를 호출하라.
				cnt = idCheck.idCheck(id);
			} catch (ClassNotFoundException e) {
//				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (SQLException e) {
//				e.printStackTrace();
				System.out.println(e.getMessage());
			}
        	 response.setContentType("application/x-json; charset=UTF-8");
        	 PrintWriter out = response.getWriter();
             out.println(cnt); //response
         }else {
        	 requestPro(request, response);
         }
	}

	public void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String view = null;
		CommandAcion com = null;
		//해당 request받아서 해당 업무로직을 생성하고 호출하고..
		 String command = request.getRequestURI();
         if (command.indexOf(request.getContextPath()) == 0) {
            command = command.substring(request.getContextPath().length());
         }
//		System.out.println("comand ::: "+command);
		switch(command) {
		case "/main.do":{//id, pw받기 위해서 화면만 띄우기
			   view = "member/main.jsp" ; 
			   break;
		      }
		case "/login.do":{//id, pw받기 위해서 화면만 띄우기
			com = new LoginAction();
			view =com.requestPro(request, response);
			break;
		}
		case "/loginAction.do":{//id,pw 검증
			com = new LoginProAction();
			view = com.requestPro(request, response);
			break;
		}
		case "/logout.do":{//logout
			com = new LoginOutAction();
			view = com.requestPro(request, response);
			break;
		}
		case "/memberList.do":{//logout
			com = new MemberListAction();
			view = com.requestPro(request, response);
			break;
		}
		case "/insertMem.do":{//logout
			com = new InsertMemberAction();
			view = com.requestPro(request, response);
			break;
		}
		case "/insertMemPro.do":{//logout
			com = new InsertMemProAtion();
			view = com.requestPro(request, response);
			break;
		}
		 default: view = "member/main.jsp" ;
		}
//	    com = new LoginAction();
//	    view = com.requestPro(request, response);
//	    System.out.println(view);
		/*
		 들어오면 원한 기능에 해당되는 (비즈니스 로직)파일로 보내... 일을 하고 돌아와서
		 view로 리턴
		  */
		//view로 호출해서 전달하기 위한 객체
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		if(view.contains(".do")) {//주소부분이 바뀌게 하려고 할 때
            response.sendRedirect(view);			
		}else {
			dispatcher.forward(request, response);	//주소는 바뀌않고 결과만 받을 때
		}
	}
}
