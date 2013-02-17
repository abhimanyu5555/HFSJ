<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isErrorPage="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<center>
		<img alt="Http 404 Error page" src="RunBitch.gif">
		<h4>Http Error: ${pageContext.exception}</h4>
	</center>
		<div align="right" >Http Error page</div>
	<hr>
</body>
</html>