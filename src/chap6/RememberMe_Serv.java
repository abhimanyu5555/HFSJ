package chap6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RememberMe_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");		
//		rem.equalsIgnoreCase("RemMe")
		
		if(request.getParameter("RememberMe") != null){		
			Cookie c = new Cookie("cookieName", name);
			c.setMaxAge(5);
			response.addCookie(c);
		}else{
			Cookie c = new Cookie("cookieName", "Generic User");
			c.setMaxAge(5);
			response.addCookie(c);
		}
		
		RequestDispatcher view = request.getRequestDispatcher("Ch6RememberMe.jsp");
		view.forward(request, response);
	}
}
