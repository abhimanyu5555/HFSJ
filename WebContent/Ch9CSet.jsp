 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page import="chap9.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Testing c:set</h4>
	
	<!-- var declared/testing in tag -->
	<c:set var="name" value="abhimanyu"/>
	your name is : ${name}
	
	<hr>
	<!-- var declared/tested in b/t tag -->
	<c:set var="lived" scope="request">
		Udaipur, Jaipur, Bangalore
	</c:set>
	You've lived in - ${lived}
	
	<hr>
	<!-- creates a bean with jsp:useBean BUT sets it with c:set -->
	<jsp:useBean id="person" class="chap9.CSetPersonBean" scope="request"/>
	<!-- sets the name property of person with value as "abhimanyu" -->
		<c:set target="${person}" property="name" value="abhimanyu"/>
	name set on existing bean - ${person.name}

	<hr>  
	<!-- setting a map -->
	<c:set target="${requestScope.map}" property="lives" value="Bangalore"/>
		<!-- since its a map, "lives" is taken as key with "Bangalore" as value -->
	Lives in - ${map.lives}	
	
	<hr>
	
	Your name before removing is - ${name}
	<!-- Var declared earlier is now removed -->
	<hr>

<%-- 
	<c:remove var="name"/>
	Your name after removing is -- ${name}	
	<hr>
 --%>	
	
	<c:set var="name" value="${per.name}"/>
	Your name is : ${name}
	<br>
	above happens cos of this thing, "per.name"
	<hr>
</body>
</html>