<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><%@ include file="header.jsp" %></div>
<form action="addOwner" method="POST">
<table align="center">
<tr>
<td>Name</td>
<td><input type="text" name="name" required></td>
</tr>
<tr>
<td>Addhar No</td>
<td><input type="text" name="aadhar" maxlength="16" required></td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="text" name="number" required></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="email" required></td>
</tr>
<tr><td colspan="2"><button>ADD</button></td></tr>
</table>
</form>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>