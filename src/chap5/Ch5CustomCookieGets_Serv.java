package chap5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ch5CustomCookieGets_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Cookie[] ca = request.getCookies();
		
		for(int x = 0; x < ca.length; x++){
			Cookie c = ca[x];
			if(c.getName().equals("userName")){
				String name = c.getValue();
				out.println("Hey, "+ name);
				break;
			}			
		}
		
		

		
		
	}
}
