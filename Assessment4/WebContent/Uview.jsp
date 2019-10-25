<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp">Go back</a>
<form action="uview" method="get">
		<table border="1" cellspacing="2" >
			<tr>
				<td>Name</td>
				<td>Email</td>
				<td>Phone</td>
			</tr>
			<c:forEach items="${data}" var="s">
				<tr>
					<Td> ${s.name } </Td>
					<Td> ${s.email} </Td>
					<Td> ${s.phone } </Td>
			</tr>
			</c:forEach>
		</table>
	
</form>
</body>
</html>