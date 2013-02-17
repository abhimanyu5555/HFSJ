package listener.chap6;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class TrySession implements HttpSessionListener{

	private static int counter;
	
	public static int getCount(){
		return counter;
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println("session created");
		counter++;
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("session DESTROYED");
		counter--;
	}
}



///**
// * Servlet implementation class TrySession
// */
//public class TrySession extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public TrySession() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//	}
//
//}
