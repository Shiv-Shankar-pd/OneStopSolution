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
<%@ include file="header.jsp" %></div>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/note.js"></script>
<c:if test="${not empty expiredVehicles }">
<div class="center">
<table border="1" align="center">
<thead>

<tr>
<th>SNO</th>
<th>OWNER NAME</th>
<th>CONTACT NO</th>
<th>VEHICLE NO</th>
<th>TAX DATE</th>
<th>POLLUTION DATE</th>
<th>PERMIT DATE</th>
<th>FITNESS DATE</th>
<th>INSURANCE DATE</th>
<th>NOTE</th>
</tr>
</thead>
<tbody>
<c:forEach var="vehicle" items="${expiredVehicles}" varStatus="loop">
        <tr>
        <td>${loop.index+1 }</td>
        <td><a href="getOwnerDetail?aadhar=${ vehicle.aadhar}">${ vehicle.owner.name}</a></td>
         <td>${vehicle.owner.number}</td>
        <td>${ vehicle.vehicle_no}</td>
        <td class="${vehicle.getCSSClass(vehicle.taxDate)}" ><fmt:formatDate value="${ vehicle.taxDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.pollution_date)}" ><fmt:formatDate value="${vehicle.pollution_date}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.permitDate)}" ><fmt:formatDate value="${vehicle.permitDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.fitnessDate)}" ><fmt:formatDate value="${vehicle.fitnessDate}" pattern="dd/MM/yyyy"/></td>
        <td class="${vehicle.getCSSClass(vehicle.insuranceDate)}" ><fmt:formatDate value="${vehicle.insuranceDate}" pattern="dd/MM/yyyy"/></td>
        <td>
        	${vehicle.note} <br>
        	<a href="note?vehicleNo=${vehicle.vehicle_no}" target="_blank">Click here to update</a>
        </td>
        </tr>    		
</c:forEach>
</tbody>
</table>

</div>
</c:if>
<c:if test="${empty expiredVehicles }"><div>Sorry No Vehicles Found</div></c:if>
<div><%@ include file="footer.jsp" %></div>
</body>
</html>