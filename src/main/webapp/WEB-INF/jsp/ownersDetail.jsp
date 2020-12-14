<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %></div>
<c:if test="${not empty owners }">
<div class="center">
<table  border="1" align="center">
<thead>
<tr>
<th>SNO</th><th>NAME</th><th>AADHAR</th><th>MOBILE</th><th>MAIL</th>
</tr>
</thead>
<tbody>

<c:forEach var="owner" items="${owners}" varStatus="loop">
        <tr>
        <td>${loop.index+1 }</td>
        <td><a href="getOwnerDetail?aadhar=${owner.aadhar}">${ owner.name}</a></td>
        <td>${ owner.aadhar}</td>
        <td>${owner.number}</td>
        <td>${owner.email}</td>
        </tr>    		
</c:forEach>
</tbody> 	
</table>
</div>
</c:if>
<c:if test="${empty owners }"><div>Sorry No Owner Found</div></c:if>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>