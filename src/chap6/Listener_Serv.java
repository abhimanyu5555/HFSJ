package chap6;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Listener_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		BindingListener bl = new BindingListener();
		
		ses.setAttribute("name", bl);
//		ses.setAttribute("name", "singh");
		ses.removeAttribute("name");
		
		ses.invalidate();
	}
}
