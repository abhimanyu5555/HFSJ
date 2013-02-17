package chap8.CodeMagnets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class CodeMagnets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Person person = new Person();
		person.setName("Abhimanyu");
		
		Dog dog = new Dog();
		dog.setName("Rover");
		
		Toy toy1 = new Toy();
		toy1.setName("bolls");
		
		Toy toy2 = new Toy();
		toy2.setName("bone");
		
		Toy toy3 = new Toy();
		toy3.setName("rope");
		
		dog.setToys(new Toy[]{toy1, toy2, toy3});
		person.setDog(dog);
		request.setAttribute("person", person);
		
		RequestDispatcher view = request.getRequestDispatcher("Ch8CodeMagnets.jsp");
		view.forward(request, response);
		
	}
}
