<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Items</title>
</head>
<body>
<a href="Community.jsp">Go back</a>
<form action="view.do" method="get">
		<table border="1" cellspacing="2" >
			<tr>
				<td>Posting title</td>
				<td>City</td>
				<td>Postal Code</td>
				<td>Email</td>
				<td>Phone</td>
			</tr>
			<c:forEach items="${data}" var="s">
				<tr>
					<Td> ${s.postingtitle } </Td>
					<Td> ${s.city} </Td>
					<Td> ${s.postalcode } </Td>
					<Td> ${s.email} </Td>
					<Td> ${s.phone} </Td>
				</tr>
			</c:forEach>
		</table>
	
</form>
</body>
</html>