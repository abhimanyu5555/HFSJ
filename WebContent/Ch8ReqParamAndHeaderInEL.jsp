<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Request Parameter In EL</h4>
	name:&emsp;${param.name} <br>
	ID: &emsp;${param.id}<br>
	City:&emsp;${param.city}<br>
	Job:&emsp;${paramValues.job[0]}<br>
	Job:&emsp;${paramValues.job[1]}<br>
	
	<h4>Header</h4>
	Through Scripting: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<%= request.getHeader("host") %>
	<br>
	Through Implicit Header.host:&emsp;&emsp;&emsp;&emsp;&emsp;
							${header.host}<br>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					header["host"]:&emsp;${header["host"]}
	<br>
	Through implicit headerValues.host[0]:&emsp;${headerValues.host["0"]}
	
	<h4>Getting HTTP method</h4>
	Through Scripting: &emsp; <%= request.getMethod() %>
	<br>
	Through EL i.e., pageContext.request.method: &emsp; ${pageContext.request.method}
	<br>
	<h4>Map of context init param</h4>
	mail id: &emsp; initParam["eMail"] -- &emsp; ${initParam["eMail"]} 
	
</body>
</html>