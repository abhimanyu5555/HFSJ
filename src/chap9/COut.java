package chap9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class COut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tip = "<b>abhi</b> is in bold";

		request.setAttribute("tip", tip);
		RequestDispatcher view = request.getRequestDispatcher("Ch9COut.jsp");
		view.forward(request, response);
	}
}
