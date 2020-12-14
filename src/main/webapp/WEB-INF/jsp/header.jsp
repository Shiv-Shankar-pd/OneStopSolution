<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css">
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery-ui.js"></script>
</head>
<body>
<div style="padding-bottom:50px;">
<img src="${pageContext.servletContext.contextPath}/images/flex.jpg" width="100%" height="150px">
<ul>
  <li><a class="active" href="home">Home</a></li>
  <li><a href="ownerInput">Add Owner</a></li>
  <li><a href="vehicleInput">Add Vehicle</a></li>
  <li><a href="getOwners">Show All Owners</a></li>
  <li><a href="getVehicles">Show All Vehicle</a></li>
  <li><a href="aboutUs">About Us</a></li>
  <li><div id="search"><form action="searchByVehicle" style="padding-right:10px;"><input required type="text"  placeholder="Enter Vehicle No" name="vehicleNo"><button>Search</button></form>
   <form action="getOwnerDetail"><input type="text" required name="aadhar"  placeholder="Enter Aadhar No"><button>Search</button></form></div></li>
  
</ul>
</div>
</body>
</html>