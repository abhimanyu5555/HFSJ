<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<%-- 	<h4>Through scripting</h4>
	<%
		Cookie[] co = request.getCookies();
		for(Cookie c: co){
			if((c.getName()).equals("name")){
/* 				out.println(co[i].getValue()); */
				String coName= c.getValue();
				%>

				<%= "Welcome " + coName %>

 				<!-- response.getWriter().print("welcome " + coName); -->

				<%
			}
		}
	%>
 --%>
	<hr>

	<h4>Accessing cookie value through EL</h4>
	Welcome back - ${cookie.name.value}
	<hr>
 
	<h4>Accessing context-param of dd through EL</h4>
	${initParam.email}
	<hr>

	

<!-- 	<h4>If u see the your name below it means, URL-Rewriting is working</h4> -->
	


 </body>
</html>