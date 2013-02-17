<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>	
	<%!
		public void jspInit(){
			String mail = getServletConfig().getInitParameter("eMail");
			getServletContext().setAttribute("mailAdd", mail);
		}
	%>	

	<h2>mail id recieved from config and set in context</h2>
		<h4>testing context</h4>
		your email is - <%= getServletContext().getAttribute("mailAdd") %>
	
	<hr>
</body>
</html>