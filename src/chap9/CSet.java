package chap9;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("rawtypes")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Map map = new HashMap();
		
		request.setAttribute("map", map);
		RequestDispatcher view = request.getRequestDispatcher("Ch9CSet.jsp");
		view.forward(request, response);
	}
}
