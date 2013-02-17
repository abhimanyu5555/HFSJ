package chap9.CustTag;

//Its tag-handler-class
//this tag handler class just prints the advice when appropriate tag is called

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class AdvisorTagHandler extends SimpleTagSupport {
	private String user;
	
	//container calls it, when JSP invokes customTag(randomAdvise) name from TLD
	public void doTag() throws IOException, JspException {
		getJspContext().getOut().write("Hello, " + user + "<br>");
		getJspContext().getOut().write("We advise you to - " + getAdvice());
	}

	//this gets called automatically on basis on basis of javaBeans convention(through attribute of custom-tag)
	public void setUser(String user){
		this.user = user;
	}

	String getAdvice(){
		String[] advise = {"Go take a walk", "Do some exercise", "Eat something nice", "Dream something"};
		int no = (int) (Math.random() * advise.length);
		String perfectAdvise = advise[no];
		return " " + perfectAdvise;
	}
}
