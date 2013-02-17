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
	<!-- This jsp files isnt linked with anything else, it just creates/sets/gets a bean of
	Person class-->
		<jsp:useBean id="person" class="chap8.bean.Person" scope="request">
			<jsp:setProperty name="person" property="name" value="abhi"/>
		</jsp:useBean>
		Hi.. <jsp:getProperty property="name" name="person"/>
	
	<hr>
</body>
</html>