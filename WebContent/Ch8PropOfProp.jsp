<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="chap8.propOfProp.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
<%-- 	<h4>get prop of prop through scripting, but highly discouraged</h4>
	Persons : <%= ((Person) request.getAttribute("person")).getName() %>
		<br>
	Dog:&emsp; <%= ((Person) request.getAttribute("person")).getDog().getName() %>	
 --%>
	<h4>get prop-of-prop through EL</h4> 
	<!-- person is an attribute/bean declared in req. scope, where as dog and name(person's name) are its property --> 
 	Person	: ${requestScope.person.name}<br>
	Dog		: ${requestScope.person.dog.name}
	
	<br>
	unconventional atttribute name<br>
 	Name	: ${requestScope["foo.person"].name}
 	
 	<hr>
</body>
</html>