<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="chap8.ElRendersRawTextAndHtml.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>EL Renders Raw Text and HTML Tags</h4>
	<hr>
		<h4>Tip of the day</h4>
		<jsp:useBean id="Tip" class="chap8.ElRendersRawTextAndHtml.CurrentTip" scope="request">
		<!-- straight setting request parameter to, param attribute -->
			<jsp:setProperty property="tip" name="Tip" param="currentTip"/>
		</jsp:useBean>
		Through getProperty --
		-- <jsp:getProperty property="tip" name="Tip"/>
		
		
		<br>
		<br>
		
		Through Scripting -- 
		<%= (String) request.getAttribute("tip") %>

		<br>
		<br>
		<h5>EL renders raw text, including HTML</h5>
		Through EL -- ${Tip.tip}
	
		<br><br>
		<div align="right">ptn:See no html tags will be displayed, i.e if in case you passed any in Ch8ElRenders.html</div>
	<hr>

</body>
</html>