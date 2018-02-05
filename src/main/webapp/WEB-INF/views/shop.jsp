<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
</head>
<link rel="stylesheet" href="resources/css/bootstrap.css" />


<body>

	<div class="container">
		<header> <%@include file="template/header.jsp"%>
		<h3>Successfull Login</h3>
		</header>
		<section id="main">
		<div class="row">
			<div class="col-sm-2">
				<nav class="nav-sidebar nav-pills nav-stacked">
				<ul class="nav tabs">
					<li class="active"><a href="account" data-toggle="tab"><i
							class="fa fa-home fa-fw"></i>My Account</a></a></li>
					<li class=""><a href="orderHistory" data-toggle="tab"><i
							class="fa fa-list-alt fa-fw"></i>Received Order</a></li>
					<li class=""><a href="saveProduct" data-toggle="tab"><i
							class="fa fa-file-o fa-fw"></i>Add Product</a></li>
					<li class=""><a href="change-password" data-toggle="tab"><i
							class="fa fa-bar-chart-o fa-fw"></i>Change Password</a></li>
					<li class=""><a href="addressDetails" data-toggle="tab"><i
							class="fa fa-table fa-fw"></i>Addresses</a></li>
					<li class=""><a href="reviews" data-toggle="tab"><i
							class="fa fa-tasks fa-fw"></i>Reviews & Ratings</a></li>
					<li class=""><a href="updateEmail" data-toggle="tab"><i
							class="fa fa-calendar fa-fw"></i>Update Email</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-sm-8 well">
				<c:set var="inpage" value="${page}.jsp" />
				<jsp:include page="${inpage}"></jsp:include>
			</div>
		</div>
		</section>
		
	</div>
</body>
</html>