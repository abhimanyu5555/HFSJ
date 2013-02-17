package chap5;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ch5CustomCookieSets_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name = request.getParameter("name");
		Cookie c = new Cookie("userName", name);
		c.setMaxAge(20);
		response.addCookie(c);
		
		RequestDispatcher view = request.getRequestDispatcher("Ch5CustomCookieSets.jsp");
		view.forward(request, response);
	}
}
