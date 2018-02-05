<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | E-Duniya</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/prettyPhoto.css" rel="stylesheet">
<link href="resources/css/price-range.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/images/ico/apple-touch-icon-57-precomposed.png">
	
<link rel="stylesheet" href="resources/css/prettyline.css" />
<style>
.es
{ margin:auto;
width:60px;
}
#btn
{
margin:auto;
width:60px;
}
</style>

<script>


function dele()
{
	if(confirm("Are you sure"))
		{
		document.getElementById("de").submit();
		}
	}

</script>
</head>
<!--/head-->

<body>
	<header id="header">
		<%@include file="template/header.jsp"%>
	</header>
	<!--/header-->
<div class="es">
<form action="addproduct" method="post">
 <button  type="submit" class="btn btn-primary btn-lg">
											ADD New Product
										</button>
</form>
</div>
			<div id="products" class="row list-group">
			<h4 style="float:left: 20px;"class="es">Existing Product </h4>
					<c:forEach var="featProds" items="${featProd}">
						<c:url var="url" value="product">
							<c:param name="productId" value="${featProds.productId}" />
						</c:url>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<img class="group list-group-image"
									src="resources/images/home/${featProds.productId}.jpg" alt="" />
								<div class="caption">
									<h4 class="group inner list-group-item-heading">
										<a href="${url}"><c:out value="${featProds.name}" /></a>
									</h4>
									<p class="group inner list-group-item-text">
										<c:out value="${featProds.manufacturer}" />
									</p>
									<p class="group inner list-group-item-text">Product
										</p>
									<div class="row">
										<div class="col-xs-12 col-md-6">
											<p class="lead">
												Rs.
												<c:out value="${featProds.price}" />
											</p>
										</div>
										</div>
										</div>
										</div>
										</div>
										</c:forEach>

	<footer id="footer">
		<!--Footer-->

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2017 E-Duniya All rights
						reserved.</p>
					<p class="pull-right">
						Designed by <span><a target="_blank"
							href="http://www.nitin.com">Nitin Singh</a></span>
					</p>
				</div>
			</div>
		</div>

	</footer>
	<!--/Footer-->



	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/price-range.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>