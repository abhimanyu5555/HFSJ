package chap9;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ForEach extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		String[] abhi = {"Abhimanyu ", "Singh ", "Rathore"};
		request.setAttribute("abhi", abhi);
*/


//		Nested loop
		String[] movie = {"inception", "SourceCode", "DarkKnight Begins"};
		String[] soap={"Friends", "Entrouge", "24"};

		ArrayList MoAndSo = new ArrayList();
		MoAndSo.add(movie);
		MoAndSo.add(soap);
		
		request.setAttribute("MoAndSo", MoAndSo);
		RequestDispatcher view = request.getRequestDispatcher("Ch9ForEach.jsp");
		view.forward(request, response);
	}
}
