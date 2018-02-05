<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>Admin</title>
</head>


<body>
	<div class="container">
		<header> <%@include file="template/header.jsp"%>
		</header>
		<section id="main">
		<div class="row">
			<div class="col-sm-2">
				<nav class="nav-sidebar nav-pills nav-stacked">
				<ul class="nav tabs">
					<li class="active"><a href="account" data-toggle="tab"><i                              
							class="fa fa-home fa-fw"></i>Site Administration</a></a></li>
					<li class=""><a href="order1" data-toggle="tab"><i
							class="fa fa-list-alt fa-fw"></i>Orders</a></li>
					<li class=""><a href="category" data-toggle="tab"><i
							class="fa fa-file-o fa-fw"></i>Categories</a></li>
							<li class=""><a href="subcategory" data-toggle="tab"><i
							class="fa fa-file-o fa-fw"></i>SubCategories</a></li>
					<li class=""><a href="pro" data-toggle="tab"><i
							class="fa fa-bar-chart-o fa-fw"></i>Products</a></li>
					<li class=""><a href="addressDetails" data-toggle="tab"><i
							class="fa fa-table fa-fw"></i>Featured Product</a></li>
				
				</ul>
				
				
				




				</nav>
			</div>
			<div class="col-sm-8 well">
				<c:set var="inpage" value="${page}.jsp" />
				<jsp:include page="${inpage}"></jsp:include>
			</div>
		</div>
		</section>
		<footer> <%@include file="template/footer.jsp"%>
		</footer>
	</div>
</body>
</html>