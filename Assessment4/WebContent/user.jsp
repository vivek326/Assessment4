<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="user" method="post">
<input type="text" name ="name" placeholder="Add Name"> <br>
	<input type="text" name ="email" placeholder="Add Email"> <br>
	<input type="text" name ="phone" placeholder="Add Phone"> <br>
	<input type="submit" value="add" />
	</form>
	<a href="Community.jsp">Go back</a>
	<form action="uview">
	<input type="submit" value="view" />
	</form>
</body>
</html>