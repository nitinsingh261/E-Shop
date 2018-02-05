<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>logo</title>

<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/prettyline.css" />
<link rel="stylesheet" href="resources/css/logo.css" />
<style type="text/css">
#rememberme-0 {
	padding: 5px;
}
</style>




</head>
<body bgcolor="lime">

	<div class="container">
		<header> <%@include file="template/header.jsp"%>
		</header>
<form action="sh" method="get">

<hr class="prettyline">
	<table align="center">
		<tr>
			<td>Enter email</td>
			<td><input type="email" name="email" id="email"
				required="required"></td>
		</tr>
			<tr style=" height : 21px;"><td></td></tr>
		<tr>
			<td>Enter password</td>
			<td><input type="password" name="password" required="required"></td>
		</tr>
			<tr style=" height : 21px;"><td></td></tr>
		<tr>
			<td></td><td align="center"><input type="submit" name="submit" value="Login"></td>
		</tr>


	</table>
	<hr class="prettyline">
</form>
</body>
</html>
