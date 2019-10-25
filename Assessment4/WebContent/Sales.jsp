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
<h1>Sales</h1>
	<form action="sale" method="post">
	<table>
	<tr>
		<td>Posting title:<input type="text" name="postingtitle" /><br /> <br /></td><td>
		city:<input type="text" name="city" /><br /> <br /></td>
		 <td>postal code:<input type="text" name="postalcode" required /><br /> <br /> </td>
		 <td>email:<input type="text" name="email" required /><br /> <br /> </td>
		 <td>phone:<input type="text" name="phone" required /><br /> <br /> </td>
		 </tr>
		 <tr>
		 <td>
		 <input type="submit" value="add" />
		 </td>
		 </tr>
			</table>
	</form>
	<h2> View available items</h2>
<form action="view.do">
	<input type="submit" value="view" />
	</form>
</body>
</html>