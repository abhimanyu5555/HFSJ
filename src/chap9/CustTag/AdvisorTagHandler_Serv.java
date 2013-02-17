package chap9.CustTag;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdvisorTagHandler_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		request.setAttribute("userName", name);
		
		RequestDispatcher view = request.getRequestDispatcher("Ch9AdvisorTagHandler.jsp");
		view.forward(request, response);
	}
}
