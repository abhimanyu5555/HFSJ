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
	<h4>Displaying from Chap8 Code magnets</h4>
	${person.name} has dog named ${person.dog.name} who has toys like below<br>
	
<!-- 	This below EL code is very imp
	what it does is - 1st it access for person attribute set in request scope,
	than it access the dog being set for that person,
	than it access toys[] in that "dog" and
	since arrays do not have overiden toString(), we will have individually access the "name" property of toys[] 
 -->
	${person.dog.toys[0].name}, ${person.dog.toys[1].name} and ${person.dog.toys[2].name}
	<hr> 
</body>
</html>