<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- test Html-to-Jsp and param attribute too -->
	<hr>
	<jsp:useBean id="H2J" class="chap8.HtmlToJspAndParam.HTJAP">
	<!-- taking value 1 by 1 -->
		<jsp:setProperty name="H2J" property="name" param="name"/>
		<jsp:setProperty name="H2J" property="age" param="age"/>
		<jsp:setProperty name="H2J" property="pro" param="pro"/>
		
<%-- <!--  	if we match property names with html parameter names we dont need to put param in -->
	<jsp:setProperty name="H2J" property="name"/>
	<jsp:setProperty name="H2J" property="age"/>
	<jsp:setProperty name="H2J" property="pro"/>
 --%>		

<%--  	the BEST, if we match all property names to param names
 	<jsp:setProperty name="H2J" property="*"/>
 --%>
  
	</jsp:useBean>
	Hi.. <jsp:getProperty property="name" name="H2J"/><br>
	your age is <jsp:getProperty property="age" name="H2J"/>
	, and you are a <jsp:getProperty property="pro" name="H2J"/>
	
	<hr>
</body>
</html>