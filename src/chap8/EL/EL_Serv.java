package chap8.EL;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class EL_Serv extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] ar = {"abhimanyu", "developer", " residing in U.S"};
		
		ArrayList<String> al = new ArrayList<String>();
		al.add("Abhimanyu");
		al.add(" Developer");
		al.add(" Lives in U.S");
		
		Map<String, String> map = new HashMap<String, String>(); 
		map.put("name", "Abhimanyu");
		map.put("lives", "U.S");

		/*to prove that el can be nested*/
		map.put("developer", "Software");
		
		request.setAttribute("ar", ar);
		request.setAttribute("al", al);
		request.setAttribute("map", map);
		
		/*to prove that if its not a string it will be evaluated*/
		request.setAttribute("job", "lives");
		
		RequestDispatcher view = request.getRequestDispatcher("Ch8EL.jsp");
		view.forward(request, response);
		
	}
}
