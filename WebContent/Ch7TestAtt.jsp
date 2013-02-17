<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- Sets attribute from pageContext to different scopes using constant, than Gets these from pageContext as well as
	there respective implicit-scope-objects, from HFSJ pdf - pg 307/8-->
<body>
	<hr>
	<h4>pageContext.set/getAttribute() with there respective scope/constants in action</h4>

	<%String str = "Page-Context-Scope-Attribute";
		pageContext.setAttribute("PCSA", str);%>
	pageContext.getAttribute from page scope -->
		<%=pageContext.getAttribute("PCSA") %>
	
	<br><br>
	
	<%String sessSco = "Session-Scope-Attibute";
	pageContext.setAttribute("SSA", sessSco, PageContext.SESSION_SCOPE); %>
	Getting session attribute from page-scope -->
		<%=pageContext.getAttribute("SSA",PageContext.SESSION_SCOPE) %>
		
	<br><br>
	
	<!-- this is how we normally do -->	
	Getting session attribute from session-scope --> 
		<%=session.getAttribute("SSA") %>
	
	<br><br>
	
	<%String appSco = "Appliction-Scope-Attribute";
	pageContext.setAttribute("ASA", appSco, PageContext.APPLICATION_SCOPE); %>

	Getting application attribute from page-scope --> 
		<%=pageContext.getAttribute("ASA", PageContext.APPLICATION_SCOPE) %>
	
	<br><br>
	
	<!-- this is how we normally do -->
	Getting application attribute from application-scope --> 
		<%=application.getAttribute("ASA") %>
	
	<br>
	<br>
	<hr>

	<h4>pageContext.findAttribute() in action</h4>
	
	findAttribute from pageScope ----> 
	<%=pageContext.findAttribute("PCSA") %>
	
	<br><br>
	
	findAttribute from sesionScope ----> 
	<%=pageContext.findAttribute("SSA") %>
	
	<br><br>
	
	findAttribute from applicationScope ----> 
	<%=pageContext.findAttribute("ASA") %>	
	
	<hr>
	
</body>
</html>



