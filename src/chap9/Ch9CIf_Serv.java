package chap9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Ch9CIf_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String value = request.getParameter("mem");
	
		
		request.setAttribute("mem", "memb");
		RequestDispatcher view = request.getRequestDispatcher("Ch9CIf.jsp");
		view.forward(request, response);
	}
}