<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up page</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/sp.css" />
</head>
<body bgcolor="aqua">
	<div class="container">
		<header> <%@include file="template/header.jsp"%>
		</header>
		<h1 align="center" style="background-color: yellow">
			<SPAN style="color: red">WELCOME to E-Duniya</SPAN><br>
			<span> Enter Product details</span>
		</h1>
		<form action="" method="get">
			<table align="center">
				<tr>
					<td>Product Name<span style="color: red">*</span></td>
					<td><input type="text" name="pname" id="pname" maxlength="25"
						required="required"></td>
				</tr>
			
<tr style=" height : 21px;"><td></td></tr>
				<tr>
					<td>Catgary<span style="color: red">*</span></td>
					<td><c:forEach var="categories" items="${categoryMap}">
					<c:set var="category" value="${categories.key}" />
					<c:url var="url" value="cateogry">
						<c:param name="category" value="${category.categoryName}" />
					</c:url>
						<fieldset>
			    <div class="form-group">
				<label class="col-lg-2 control-label"></label>
				<div class="col-lg-10">
					<div class="radio">
						<label> <input type="radio" > 
							  				
					<c:out
								value="${category.categoryName}" />
						</label>
					</div>
					</div>
					</div>
					</fieldset>
					</c:forEach>
			</td>
				</tr>
				<tr style=" height : 21px;"><td></td></tr>
				<tr>
					<td>Description<span style="color: red">*</span></td>
					<td><input type="text" name="des" id="des" maxlength="100"
						required="required" style="width: 385px; height: 67px;"></td>
				</tr>
				<tr style=" height : 21px;"><td></td></tr>
		
				<tr>
					<td>Quantity<span style="color: red">*</span></td>
					<td><input type="number" name="quantity" id="quantity" min="0"
						max="100000" required="required"></td>
				</tr>
		<tr style=" height : 21px;"><td></td></tr>
				<tr>
					<td>Insert image<span style="color: red">*</span></td>
					<td><input type="file" name="pic" accept="image/*"></td>
				</tr>
		<tr style=" height : 21px;"><td></td></tr>
				<tr>
					<td>Submit<span style="color: red">*</span></td>
					<td><input type="submit" Value="Submit" required="required"></td>
				</tr>
			<tr style=" height : 21px;"><td></td></tr>
			</table>
		</form>
		<footer> <%@include file="template/footer.jsp"%>
		</footer>
	</div>
</body>
</html>