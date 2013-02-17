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
	<c:choose>
		<c:when test="${name == 'abhi'}">
			<h4>Your full name is ABhimanyu Singh Rathore</h4>
		</c:when>
		<c:when test="${name == 'vish'}">
			<h4>Your full name is Vishakh Duggal</h4>
		</c:when>
		<c:otherwise>
			<h4>You got to gimme some nick name</h4>
		</c:otherwise>
	</c:choose>
	<hr>
</body>
</html>