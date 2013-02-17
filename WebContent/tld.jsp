<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="mine" uri="DiceFunction" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Testing function through EL in JSP</h4>
	<!-- please note the that there is "colon" B/T mine and rollIt, not a Dot -->
	No. you got from dice rolling function is -- ${mine:rollIt()}
</body>
</html>