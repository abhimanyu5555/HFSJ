<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h2>Testing HTML2JSP</h2>
	<jsp:useBean id="person" type="chap8.polybean.PBEmployee" class="chap8.polybean.PBEmployee">


<%-- 		note-with scripting
		<% person.setName(request.getParameter("name")); %>
 --%>

 
<%-- 		note-with scripting inside standard-action, PTN - value-tag must be in single-inverted-commas
		<jsp:setProperty property="name" name="person" value='<%= request.getParameter("empId") %>' />
 --%>

 
<%--  <!-- 		note-param attribute of "setProperty"-tag -->
		<jsp:setProperty name="person" property="name" param="name"/>
		<jsp:setProperty name="person" property="empId" param="empId"/>
 --%>
 
 
<!-- 		If we match request.getParameter-name with that of property-name-in-bean, we wont even have to 
		specify param-attribute at all 
 -->
 		<jsp:setProperty name="person" property="name" param="name"/>
<!--  		below works even WO param cos its param.-name match's with property-name -->
		<jsp:setProperty name="person" property="empId"/>


 
<%-- <!--  		If we match all request-parameter-name with that of property-names-of-bean, then we dont need to declare specific
 		property/value/param, just property="*" is enough
 -->
 		<jsp:setProperty name="person" property="*"/>
 --%>  
 	
 		
<%-- <!--  		Automatic parsing works "if and only if", property is of primitive type -->
	 	<jsp:setProperty name="person" property="*"/>
 --%>	 	


<%-- <!--  				PTN(from WATCH IT) - but in case of scripting inside action tag like value
					,it wont work PG 364(watch it)
 -->
		 		<jsp:setProperty name="person" property="name" param="name"/>
		<jsp:setProperty name="person" property="empId" value='<%= request.getParameter("empId") %>' />
 --%> 
 
 
 		Name - &emsp;<jsp:getProperty property="name" name="person"/>
		<br>
		EmpId- &emsp;<jsp:getProperty property="empId" name="person"/>

	</jsp:useBean>
	</center>
</body>
</html>


<%-- 		<jsp:setproperty property="*" name="person" /> --%>