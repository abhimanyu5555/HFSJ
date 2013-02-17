<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Testing pg - 379 </h2>
	
	This works: {al[0]} ----- ${al[0]}
	<br>
	BUT this wont: {al.1}
	<br>
	<br>
	Moral - If we dont use some name java variable, than dont put it after "."
</body>
</html>
