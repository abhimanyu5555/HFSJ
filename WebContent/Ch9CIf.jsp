<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Comments</h4>
	<hr>
	This site rocks<br>
	This site is cool<br>
	This site is stupid
	<hr>
	<c:if test="${mem eq 'member'}">
		<jsp:include page="Ch9-CIf.jsp"/>
	</c:if>	
</body>
</html>