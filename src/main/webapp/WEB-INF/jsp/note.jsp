<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Note</title>

</head>
<body>
<%@ include file="header.jsp" %></div>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/note.js"></script>
<div align="center">${msg }<br>Please Enter Note</div>
<form align="center" action="addNote" method="POST">

<textarea name="note" rows="10" cols="50" >${note }</textarea>
<input type="hidden"  name="vehicleNo" required value="${param.vehicleNo }" >
<br>
<button>Save/Update</button>
</form>

<div><%@ include file="footer.jsp" %></div>
</body>
</html>