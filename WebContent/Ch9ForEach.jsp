<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>ForEach</h4> 
	<table>

<%-- 
		<!-- example for forEach loop, i.e not nested -->	
		<c:forEach var="name" items="${requestScope.abhi}" varStatus="nameCounter">
			<tr>
				<td>No.${nameCounter.count}</td><td>&emsp;${name}</td>
			</tr>
		</c:forEach>
 --%>
 
 	<!-- nested loop --> 	
 	<c:forEach var="loop1" items="${requestScope.MoAndSo}">
 	<!-- this will loop through movie[] and soap[] array -->
 		<c:forEach var="loop2" items="${loop1}">
 		<!-- this loop through the content of 1st movie[] and then soap[] -->
 			<tr>
 				<td>${loop2}</td>
 			</tr>
 		</c:forEach> 	
 	</c:forEach>
 

 	</table>
</body>
</html>