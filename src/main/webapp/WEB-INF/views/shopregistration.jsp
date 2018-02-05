<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up page</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/shr.css" />
</head>
<body bgcolor="lime">

	<div class="container">
		<header> <%@include file="template/header.jsp"%>
		</header>
	<form action="sho" method="post">
		<table align="center">
			<td><h3>
					Enter your details
				</h3></td>
			<tr>
				<td>Shop Name<span style="color: red">*</span></td>
				<td><input type="text" name="shopName" id="shopName" maxlength="25"
					required="required"></td>
			</tr>
			<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>First Name<span style="color: red">*</span></td>
				<td><input type="text" name="firstName" id="firstName" maxlength="25"
					required="required"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>last Name<span style="color: red">*</span></td>
				<td><input type="text" name="lastName" id="lastName" maxlength="25"
					required="required"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>Email<span style="color: red">*</span></td>
				<td><input type="email" name="emailAddress" id="emailAddress" maxlength="25"
					required="required"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>Password<span style="color: red">*</span></td>
				<td><input type="password" name="password" id="password"
					maxlength="15" required="required"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			
			<tr>
				<td>Mobile<span style="color: red">*</span></td>
				<td><input type="number" name="phoneNumber" id="phoneNumber" maxlength="10"
					required="required" min="1000000000" max="9999999999"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>Address<span style="color: red">*</span></td>
				<td><input type="text" name="address" id="address" maxlength="50"
					required="required" style="width: 248px; height: 62px;"></td>
			</tr>
			<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>City<span style="color: red">*</span></td>
				<td><input type="text" name="city" id="city" maxlength="25"
					required="required"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>Pincode<span style="color: red">*</span></td>
				<td><input type="number" name="pincode" id="pincode" maxlength="6"
					required="required" min="100000" max="999999"></td>
			</tr>
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>state<span style="color: red">*</span></td>
				<td><input type="text" name="state" id="state" maxlength="6"
					required="required"></td>
			</tr>
			
		<tr style=" height : 21px;"><td></td></tr>
			<tr>
				<td>Submit<span style="color: red">*</span></td>
				<td><input type="submit" Value="Submit" ></td>
			</tr>
			<tr style=" height : 21px;"><td></td></tr>
		</table>
	</form>
	<footer> <%@include file="template/footer.jsp"%>
		</footer>
	</div>
</body>
</html>