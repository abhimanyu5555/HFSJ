package hf.ser.jsp.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Example extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.println("we got here from doGet > doPost");
//		
//		ServletContext ctx = getServletContext();
//		String mailId =(String) ctx.getAttribute("mailAdd");
//		
//		request.setAttribute("mail", mailId);
//		
//		RequestDispatcher view = request.getRequestDispatcher("GetAtt.jsp");
//		view.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//out.println("Inside doGet()");

		//Testing Scriptlet/expression/directive/declaration
		RequestDispatcher view = request.getRequestDispatcher("Example.jsp");
		view.forward(request, response);		
	}
}




////Testing HttpSessionBindingListener on PojoDog
//PojoDog dog = new PojoDog("Rover");
//HttpSession session = request.getSession();
//session.setAttribute("name", dog);
//session.removeAttribute("name");



////FOR TESTING OF SESSIONLISTENER(TrySession)& SESSIONATTRIBUTELISTENER(SessAttList)
//HttpSession session = request.getSession();
//
//if(session.isNew()){
//	out.println("<br><br>Counter -- "+ TrySession.getCount());
//}
//
//session.setAttribute("name", "Abhimanyu");
//
//session.invalidate();
//out.println("<br><br>Counter -- "+ TrySession.getCount());


////CHECKING OUT IF COOKIE'S PERSIST AFTER SESSION EXPIRES OR NOT
//out.println("Cookieing<br>");
//HttpSession session = request.getSession();
//Cookie c = new Cookie("name", "Abhi");
//c.setMaxAge(20);
//response.addCookie(c);
//
//if(session.isNew()){
//	out.println("Newly created Session -- ");
//	session.setMaxInactiveInterval(10);
//}else{
//	out.println("Session is no more but we still remember you -- " );
//}
//if(c.getMaxAge() <= 20){
//	Cookie[] coo = request.getCookies();
//	for(int x = 0; x < coo.length; x++){
//		Cookie cook = coo[x];
//		if(cook.getName().equals("name")){
//			out.println("Hello Mr. " + cook.getValue());
//			break;
//		}
//	}
//}



////R n D
//out.println("<html><body>");
//out.println("<a href=\""+ response.encodeURL("/Example.do") +"\">Click Me</a>");
//out.println("</html></body>");
//out.println("from doGet");




////TRYING TO CALL doPost FROM doGet, THAT TOO THROUGH ITS DD NAME... >> Example.do 
//protected void doPost(HttpServletRequest request, HttpServletResponse response) 
//		throws ServletException, IOException {
//	response.setContentType("text/html");
//	PrintWriter out = response.getWriter();
//	out.println("we got here from doGet > doPost");
//	
//}
//
//
//protected void doGet(HttpServletRequest request, HttpServletResponse response) 
//		throws ServletException, IOException {
//	response.setContentType("text/html");
//	PrintWriter out = response.getWriter();
//	out.println("from doGet");
//	doPost(request, response);
//}



//HTTPSSESSION WITH (FALSE) AS ARG, SO THAT IT DOESNT MAKE A NEW SESSION AND USES ONLY OLD
//response.setContentType("text/html");
//PrintWriter out = response.getWriter();
//		
//HttpSession session = request.getSession(false);
//
//
//if(session == null){
//	out.println("No session was available");
//	out.println("Making one now.. .. .");
//	session = request.getSession();
//}else{ out.println("There was already a session.."); }
////this ll delete any existing session
////session.invalidate();





////TESTING A NEW SESSION OBJ
//response.setContentType("text/html");
//PrintWriter out = response.getWriter();
//out.println("SESSION");
//
//HttpSession session = request.getSession();
//
//if(session.isNew()){
//	out.println("This is NEW Session");
//}else{ out.println("Welcome Back"); }



////PORT NO.
//out.println("</br> Ports are as follows.. </br> remote port -- " + request.getRemotePort() + "</br> server port -- " +
//request.getServerPort() +"</br> local port -- " + request.getLocalPort());


////R n S ABOUT HEADERS
//response.setHeader("name" , "abhimanyu");
//out.println("</br> the header's value you ve just now added is .. " + request.getHeader("name"));


////TESTING "getInitParameter()"
////It wont work with Iterator cos the below () returns Enumerator
////Iterator i =  getServletConfig().getInitParameterNames();
////ptn --> getPramaterNames return only, param-name not value
//		
//Enumeration e =  getServletConfig().getInitParameterNames();
//while(e.hasMoreElements()){
//out.println("</br>param-name is  ---->" + e.nextElement() + "</br>");
//
//out.println("Testing the ServletConfig obj </br>");
//out.println("Email from DD is  ----> " + getServletConfig().getInitParameter("myEmail") + "</br>");
//
//}






////KNOWING THE INFO REGARDING SERVER FROM ServletContext obj
//
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.println("Server --> " + getServletContext().getServerInfo() + "</br></br>");
//		out.println("Version --> " + getServletContext().getMajorVersion());
//
////LISTENER EXAMPLE FOR DB
////Apart from the below code there is bean/attribute(DB) class and Listener(DBListener) class
//	
//
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		
//		out.println("Testing the Fake* DB intialization </br></br>");
//		
//		//getting the attribute which is been set by DBListener class, DONT forget to cast it ****
//		DB name = (DB) getServletContext().getAttribute("DBName");
//		out.println("From inside Example.java.. " + name.getDBName());
//
//
//
//
//	THIS IS ONLY POSSIBLE PROOVE IN CASE, IF SOME THREAD/SERVLET SETS THE CONTEXT ATTRIBUTE IN B/T OF READING
//	
//			out.println("</br> context is BITCH -- ");
//		
//		getServletContext().setAttribute("lucky", "4");
//		getServletContext().setAttribute("no.", "8");
//
//		out.println(getServletContext().getAttribute("lucky"));
//		out.println(getServletContext().getAttribute("no."));
	





//URL-REDIRECTING TO DIFFERENT LOCATION
//response.setContentType("text/html");
//
//String s = request.getParameter("search");
//String G = "google";
//String B = "bing";
//String M = "gmail";
//String R = "reader";
//
//if(s.equals(G)){
//	response.sendRedirect("http://www.google.com");
//}else if(s.equals(B)){
//	response.sendRedirect("http://www.bing.com");
//}else if(s.equals(M)){
//	response.sendRedirect("http://www.gmail.com");
//}else if(s.equals(R)){
//	response.sendRedirect("http://www.google.com/reader/view");
//}
