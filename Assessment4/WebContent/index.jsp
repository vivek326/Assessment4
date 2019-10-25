<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
 <h2>Community</h2>
 <form action="Community.jsp" method="post">
<table>
<tr>
<td>
<input type="radio" name="com" value="a1">Community</td>
</tr>
<tr>
<td>
<input type="radio" name="com" value="a2">Event/Class</td>
</tr>
<tr>
<td><input type="submit" value="Continue"></td>
</tr>
</table>
</form>
<form action="Sales.jsp">
<h2>Sales</h2>
	<table>
<tr>
<td>
<input type="radio" name="com1" value="b1">For sale by owner</td>
</tr>
<tr>
<td>
<input type="radio" name="com1" value="b2">For sale by dealer</td>
</tr>
<tr>
<td>
<input type="radio" name="com1" value="b3">Wanted by owner</td>
</tr>
<tr>
<td>
<input type="radio" name="com1" value="b4">Wanted by dealer</td>
</tr>
<tr>
<td><input type="submit" value="Continue"></td>
</tr>
</table>
</form>
<h2>Housing</h2>
	<form action="HouseOffered.jsp">
	<table>
	<tr>
<td>
<input type="radio" name="com2" value="c1">Wanted by dealer</td>
</tr>
<tr>
<td>
<input type="radio" name="com2" value="c2">Wanted by dealer</td>
</tr>
<tr>
<td><input type="submit" value="Continue"></td>
</tr>
</table>
	</form> <br>
<h2>Jobs</h2>
	<form action="JobOffered.jsp">
	<table>
	<tr>
<td>
<input type="radio" name="com3" value="d1">housing offered</td>
</tr>
<tr>
<td>
<input type="radio" name="com3" value="d2">housing wanted</td>
</tr>
<tr>
<td><input type="submit" value="Continue"></td>
</tr>
</table>
	</form> <br>
<h2>Services</h2>
	<form action="Service.jsp">
	<input type="radio" name="com4" value="e1">Services offered<br>
	<input type="submit" value="Continue">
	</form> <br>
	
</body>
</html>