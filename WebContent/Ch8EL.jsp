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
	<!-- Testing String[]/ArrayList/Maps in EL with [] access operator -->
	
	<h4>String [] -- </h4>
	Name : ${ar[0]} <br>
	Profession: ${ar["1"]}<br>
	Place:	${ar[2]}


	<h4>ArrayList -- </h4>
	Name:${al[0]}<br>
	Profession:${al["1"]}<br>
	Place:${al["2"]}

 
 	<h4>Testing map/beans with . and []</h4>
 	Name : ${map.name}<br>
 	<!-- Since "lives" is String Literal, it will not be evaluated, i.e it'll be taken
 	on its face value as "map's-key" -->
 	Place : ${map["lives"]}

 
 
	<h4>2nd var. is evaluated cos, its not a String Literal</h4>
<!-- 	Since job is not String literal, it will be evaluated as an attribute and its value will be used inside
		the map attribute  
 -->
 	Best place for you to work in is -- ${map[job]}

	<h4>nested EL</h4>
	<!-- ar["1"] returns 'developer', and that is used as key in map -->
	Your profession is : ${map[ar["1"]]}
	
	<hr>

</body>
</html>