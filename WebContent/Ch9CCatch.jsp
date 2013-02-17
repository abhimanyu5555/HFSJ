<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- for this to work you need to disable DD error-page tag -->

	<hr>
	<c:catch var="myException">
		<h4>Actual page</h4>
		<% int x = 10 % 0; %>	
	</c:catch>


	<c:if test="${myException != null}">
		there was an exception in catch block -- ${myException.message}
	</c:if>

	<hr>
</body>
</html>