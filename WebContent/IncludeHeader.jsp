<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	Header is comingUP
	<%@ include file="IncludeHeader.html" %>
	<br><br>
	Now header through action is comingUp
	<jsp:include page="IncludeHeader.html"></jsp:include>
 --%>

<jsp:include page="Include-Header.jsp">
	<jsp:param name="p2" value="you are on page 2"/>
	<jsp:param name="p5" value="you are on page 5"/>
</jsp:include>


</body>
</html>