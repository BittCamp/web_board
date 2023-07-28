package hello;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {//생성자
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, 
			             HttpServletResponse response) throws ServletException, IOException {
		// 주소에서 호출하는 경우 이 메소드를 실행
		//이전 페이지에서 method='get'로 호출하면 이 메소드 실행함
		// getContextPath() 해당프로젝트의 웹상에 이름
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("\n"+id+"\n");
		response.getWriter().append("\n"+passwd+"\n");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메뉴, 파일내에서 호출할 때 이 메소드 실행
		//이전 페이지에서 method='post'로 호출하면 이 메소드 실행함
		doGet(request, response);// post로 들어와도 doGet()호출하라고 함
	}

}
