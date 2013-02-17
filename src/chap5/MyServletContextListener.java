package chap5;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		 
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		ServletContext sc = event.getServletContext();
		String dogName = sc.getInitParameter("dogName");

		Dog d = new Dog(dogName);
		
		sc.setAttribute("name", d);
	}
}
