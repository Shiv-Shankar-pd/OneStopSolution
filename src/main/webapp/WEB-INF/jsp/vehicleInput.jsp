<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<button id="btn" >close</button>
<div><div><%@ include file="header.jsp" %></div></div>
<form action="addVehicle" method="POST">
<table align="center">
<tr>
<td>Vehicle No</td>
<td><input type="text" name="vehicle_no" required><br></td>
</tr>
<tr>
<td>Owner Aadhar</td>
<td><input type="text" name="aadhar" maxlength="16" required><br></td>
</tr>
<tr>
<td>Pollution Date</td>
<td><input type="date" name="pollution_date" required><br></td>
</tr>
<tr>
<td>Tax Date</td>
<td><input type="date" name="taxDate" required><br></td>
</tr>
<tr>
<td>Permit Date</td>
<td><input type="date" name="permitDate" required></td>
</tr>
<tr>
<td>Fitness Date</td>
<td><input type="date" name="fitnessDate" required></td>
</tr>
<tr>
<td> Insurance Date</td>
<td><input type="date" name="insuranceDate" required></td>
</tr>
<tr><td colspan="2"><button>ADD</button></td></tr>
</table>
</form>
<div><%@ include file="footer.jsp" %></div>
</body>
<script>
alert('hii testing');
function test(){
parent.closeIframe();
}

document.getElementById('btn').addEventListener('click', handleButtonClick, false);
function handleButtonClick(e) {
window.parent.postMessage({'val1':'2','val2':'3'},'*');
}

</script>
</html>
