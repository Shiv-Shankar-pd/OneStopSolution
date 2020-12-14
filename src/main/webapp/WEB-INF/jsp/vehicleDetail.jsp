<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>

function showEdit(){
	document.getElementById("nonEditableData").style.display = "none";
	document.getElementById("editableData").style.display = "block";
}
</script>
</head>
<body>
<div><%@ include file="header.jsp" %></div>

<c:if test="${not empty vehicle }">
<div id="nonEditableData" style="padding-top:10px;">
<table border="1" align="center">
<tbody>

        <tr>
        <td>Vehilce No</td><td>${ vehicle.vehicle_no}</a></td>
        <tr/>
        <tr>
        <td>Tax Date</td><td><fmt:formatDate value="${ vehicle.taxDate}" pattern="dd/MM/yyyy"/></td>
        <tr/>
        <tr>
        <td>Pllution Date</td><td><fmt:formatDate value="${vehicle.pollution_date}" pattern="dd/MM/yyyy"/></td>
        <tr/>
        <tr>
        <td>Permit Date</td><td><fmt:formatDate value="${vehicle.permitDate}" pattern="dd/MM/yyyy"/></td>
        <tr/>
        <tr>
        <td>Fitness Date</td><td><fmt:formatDate value="${vehicle.fitnessDate}" pattern="dd/MM/yyyy"/></td>
        <tr/>
        <tr>
        <td>Insurance Date</td><td><fmt:formatDate value="${vehicle.insuranceDate}" pattern="dd/MM/yyyy"/></td>
        </tr> 
        <tr>
        <td>Note</td><td>${vehicle.note}</td>
        </tr>  
        <tr><td><Button onclick="showEdit()">Edit</Button></td></tr>  		
</tbody>
</table>
</div>
<div id="editableData" style="padding-top:10px;display:none">
<form action="updateVehicle" method="POST">
<table align="center">
<tr>
<td>Vehicle No</td>
<td><input type="text" disabled name="vehicle_no" maxlength="16" required value="${vehicle.vehicle_no }" ><input type="hidden"  name="vehicle_no" maxlength="16" required value="${vehicle.vehicle_no }" ></td>
</tr>
<tr>
<td>Owner Aadhar</td>
<td><input type="text" name="aadhar" maxlength="16" required value="${vehicle.aadhar }"></td>
</tr>
<tr>
<td>Pollution Date</td>
<td><input type="date" name="pollution_date" required value="${vehicle.pollution_date }"><br></td>
</tr>
<tr>
<td>Tax Date</td>
<td><input type="date" name="taxDate" required value="${vehicle.taxDate }"><br></td>
</tr>
<tr>
<td>Permit Date</td>
<td><input type="date" name="permitDate" required value="${vehicle.permitDate }"></td>
</tr>
<tr>
<td>Fitness Date</td>
<td><input type="date" name="fitnessDate" required value="${vehicle.fitnessDate }"></td>
</tr>
<tr>
<td> Insurance Date</td>
<td><input type="date" name="insuranceDate" required value="${vehicle.insuranceDate }"></td>
</tr>
<tr>
<td>Note</td>
<td><input type="text" name="note" required value="${vehicle.note }"></td>
</tr>
<tr><td colspan="2"><button>Update</button></td></tr>
</table>
</form>
</div>
</c:if>
<c:if test="${empty vehicle }">
<div style="color:red;padding-top:10px;">Sorry No Vehilce Found</div>
</c:if>

<div><%@ include file="footer.jsp" %></div>
</body>
</html>