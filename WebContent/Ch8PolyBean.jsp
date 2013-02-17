<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="chap8.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- scope="page" -->
	<jsp:useBean id="person" type="chap8.polybean.PBPerson" class="chap8.polybean.PBEmployee">
		<jsp:setProperty name="person" property="name" value="abhi" />		
		<jsp:setProperty name="person" property="id" value="2222" />
	</jsp:useBean>
	<hr>
	name -- <jsp:getProperty name="person" property="name" />
	<br>
	id&emsp;&emsp; -- <jsp:getProperty name="person" property="id" />
	<hr>	
</body>
</html>