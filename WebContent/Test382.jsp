<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Test382.jsp</h3>
	<h4>cookie</h4>
	<h5>through scripting</h5>
	your name:
 	<%
		Cookie[] co = request.getCookies();
		for(int i=0; i < co.length; i++){
			if((co[i].getName()).equals("co")){
				out.println(co[i].getValue());
			}
		}
	%>
	<br>
	<h5>Through EL implicit-obj</h5>
	your name:
	${cookie.co.value}
	<br>
	
	<h4>Context init param</h4>
	<h5>through scripting</h5>
	your EMails:<%= application.getInitParameter("email") %>	
	<br>
	<h5>Through EL</h5>
	your EMail: ${initParam.email}
</body>
</html>