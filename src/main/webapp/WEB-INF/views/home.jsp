<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/home.css" />
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/jquery-1.8.0.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<header>
			<%@include file="template/header.jsp"%>
		</header>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="carousel slide" id="theCarousel" data-interval="2000">

							<ol class="carousel-indicators">
								<li data-target="#theCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#theCarousel" data-slide-to="1"></li>
								<li data-target="#theCarousel" data-slide-to="2"></li>
							</ol>

 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/vibe.jpg" alt="1" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/Asus.jpg" alt="2" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="resources/micromax.png" alt="3" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



















				</div>
				<div id="well" class="well well-sm">
					<strong>Category Title</strong>
					<div class="btn-group">
						<a href="#" id="list" class="btn btn-default btn-sm"><span
							class="glyphicon glyphicon-th-list"> </span>List</a> <a href="#"
							id="grid" class="btn btn-default btn-sm"><span
							class="glyphicon glyphicon-th"></span>Grid</a>
					</div>
				</div>
				<div id="products" class="row list-group">
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
										<c:url var="add" value="/addProduct">
											<c:param name="productId" value="${featProds.productId}" />
										</c:url>
										<div class="col-xs-12 col-md-6">
											<a class="btn btn-success" href="${add}">Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<footer>
			<%@include file="template/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
<script>
	$(document).ready(function() {
		$('#list').click(function(event) {
			event.preventDefault();
			$('#products .item').addClass('list-group-item');
		});
		$('#grid').click(function(event) {
			event.preventDefault();
			$('#products .item').removeClass('list-group-item');
			$('#products .item').addClass('grid-group-item');
		});
	});
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("fast");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("fast");
							$(this).toggleClass('open');
						});
			});
</script>
<script>
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("fast");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("fast");
							$(this).toggleClass('open');
						});
			});
</script>