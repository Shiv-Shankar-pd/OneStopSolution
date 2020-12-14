<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><%@ include file="header.jsp" %></div>
<div class="center">
<c:if test="${not empty owner}">
<table align="center" border="1">
<tr><td>Name</td><td>${owner.name}</td></tr>
<tr><td>Aadhar</td><td>${owner.aadhar}</td></tr>
<tr><td>Mobile</td><td>${owner.number}</td></tr>
<tr><td>Email</td><td>${owner.email}</td></tr>
</table>
<c:if test="${not empty owner.vehicles }">
<div style="padding-top:10px;">
<table border="1" align="center">
<thead>

<tr>
<th>SNO</th>
<th>VEHICLE NO</th>
<th>TAX DATE</th>
<th>POLLUTION DATE</th>
<th>PERMIT DATE</th>
<th>FITNESS DATE</th>
<th>INSURANCE DATE</th>
</tr>
</thead>
<tbody>
<c:forEach var="vehicle" items="${owner.vehicles}" varStatus="loop">
        <tr>
        <td>${loop.index+1 }</td>
        <td>${ vehicle.vehicle_no}</a></td>
         <td class="${vehicle.getCSSClass(vehicle.taxDate)}" ><fmt:formatDate value="${ vehicle.taxDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.pollution_date)}" ><fmt:formatDate value="${vehicle.pollution_date}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.permitDate)}" ><fmt:formatDate value="${vehicle.permitDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.fitnessDate)}" ><fmt:formatDate value="${vehicle.fitnessDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.insuranceDate)}" ><fmt:formatDate value="${vehicle.insuranceDate}" pattern="dd/MM/yyyy"/></td>
        </tr>    		
</c:forEach>
</tbody>
</table>
</div>
</c:if>
<c:if test="${empty owner.vehicles }">
<div style="color:red;padding-top:10px;">Sorry No Vehilce Found</div>
</c:if>
</c:if>
<c:if test="${empty owner }">
<div style="color:red;padding-top:10px;">Sorry No Owner Found</div>
</c:if>
</div>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>