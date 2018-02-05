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
	<section>
		<div class="container">
			<div class="row">
			<hr class="prettyline">
			<h4><b> Category Name</b></h4>
			<hr class="prettyline">
			
					
			
			<c:forEach var="su" items="${subCatProds}">
					
			<c:out value="${su.name}"></c:out>
			<c:out value="${su.featured}"></c:out>
			<c:out value="${su.price}"></c:out>
			</c:forEach>
				<c:forEach var="featProds" items="${featProd}">
				                       <p class="group inner list-group-item-text">
			
										<c:out value="${featProds.categoryName}" />
										
										<div class="form-group" >
									<!-- Button -->
									<div class="col-md-offset-3 col-md-9">
									
									<form id="frm1" action="edit" method="POST">
									<input type="hidden" name="categoryName" value="${featProds.categoryName}">
									
									    <button id="btn-edit" type="submit"  class="btn btn-info" style="float: right;">
											<i class="icon-hand-right"></i> EDIT
										</button>
										</form>
										<form id="de"action="delete" method="POST">
										<input type="hidden" name="categoryName" value="${featProds.categoryName}">
										 <button id="btn-delete" type="button" 	onclick="dele()" class="btn btn-danger"style="float: right;" >
											<i class="icon-hand-right"></i> 	<span class="glyphicon glyphicon-remove"></span>Delete
										</button>
                                            </form>
									</div>
							
								</div>
										
									
									</p>
		
				</c:forEach>
		
		
		<hr class="prettyline">
		
		<form id="addcategory" action="addCategory" class="form-horizontal"
								role="form" method="post">
								
									<hr class="prettyline">
								<div class="form-group">
									<label for="category" class="col-md-3 control-label">Category Title</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="categoryName" id="categoryName"
											placeholder="category title" required="required">
									</div>
								</div>

								<div class="form-group">
									<!-- Button -->
									<div class="col-md-offset-3 col-md-9">
										<button id="btn-signup" type="submit" class="btn btn-info"style="float: right;">
											<i class="icon-hand-right"></i> ADD
										</button>
										
									</div>
								</div>
				
					</form>
					<hr class="prettyline">		
	</section>

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