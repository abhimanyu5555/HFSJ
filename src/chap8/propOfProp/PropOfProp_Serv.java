package chap8.propOfProp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PropOfProp_Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Person person = new Person();
		person.setName("mark");
		
		Dog dog = new Dog();
		dog.setName("rover");
		
		//below, we set property of property..
		person.setDog(dog);
		
		request.setAttribute("person", person);
		
		request.setAttribute("foo.person", person);
		
		RequestDispatcher view = request.getRequestDispatcher("Ch8PropOfProp.jsp");
		view.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
}
