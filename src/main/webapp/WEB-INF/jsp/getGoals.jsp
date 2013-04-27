<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2">
<title>Goal Report</title>
</head>
<body>


	<table>
	
	<tr>
		<th>ID</th><th>Minutes</th>
	</tr>
	
	<c:forEach items="${goals}" var="goal">
	
	<tr>
		<td>${goal.id}</td><td>${goal.minutes}</td>
		
		<td>
		
			<table>
			
				<tr>
					<th>Excercise ID</th><th>Excersise Minutes</th><th>Excersise Activity</th>
				</tr>
			
			<c:forEach items="${goal.exercises}" var="excercise">
				<tr>
				
					<td>${excercise.id}</td><td>${excercise.minutes}</td><td>${excercise.activity}</td>
				
				</tr>
			
			</c:forEach>
			
			</table>
			
		</td>
	</tr>
	
	
	</c:forEach>
	
	</table>

</body>
</html>