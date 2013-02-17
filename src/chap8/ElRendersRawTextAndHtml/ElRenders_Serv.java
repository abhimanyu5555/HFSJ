package chap8.ElRendersRawTextAndHtml;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ElRenders_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*setting up of attribute manually is required,
		 *  in order for Ch8ElRenders.jsp's "Through Scripting" part to work*/
		String tip = request.getParameter("currentTip");
		request.setAttribute("tip", tip);

		RequestDispatcher view = request.getRequestDispatcher("Ch8ElRenders.jsp");
		view.forward(request, response);

	}
}
