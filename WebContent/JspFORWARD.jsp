<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- This is the jsp file that actually does the forward if user has not logged into system -->

	<h2>Hey, Welcome to our "System"</h2>
	<%if(request.getParameter("userName")== null) {%>
		<jsp:forward page="Jsp-FORWARD.jsp"></jsp:forward>
	<%}%>
	
</body>
</html>