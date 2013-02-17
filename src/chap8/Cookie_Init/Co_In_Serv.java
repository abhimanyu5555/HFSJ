package chap8.Cookie_Init;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Co_In_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		
		System.out.println("What the..");
		String usName = request.getParameter("userName");
		Cookie co = new Cookie("name", usName);
		co.setMaxAge(5);
	
		response.addCookie(co);

		RequestDispatcher view = request.getRequestDispatcher("Ch9Co_Init.jsp");
		view.forward(request, response);
	}
}
