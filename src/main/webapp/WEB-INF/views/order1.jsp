<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Order | E-Duniya</title>
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
			<h4><b> Order Status</b></h4>
			<hr class="prettyline">
			
			
 
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<table class="table table-striped">
        <thead>
            <tr>
                <th>Order Id</th>
                <th>Created Date</th>
                <th>Updated Date</th>
                <th>Email Address</th>
                <th>Order Status</th>
                <th>Order Total</th>
                <th>Customer Id</th>
                <th>Address Id</th>
            </tr>
        </thead>
        <tbody>
           
           <form method="post" action="order1">
           <input type="checkbox" Value="Pending" name="status" id="status">Pending
          <input type="checkbox" Value="Confirmed" name="status" id="statu">Confirmed 
           <input type="submit" value="GO">;
           </form>
      
			
		
				<c:forEach var="featProds" items="${featProd}">
				                       <p class="group inner list-group-item-text">
			 <tr>
										 <td><c:out value="${featProds.orderId}" /></td>
											 <td><c:out value="${featProds.createdDate}" /></td>
									 <td><c:out value="${featProds.updatedDate}" /></td>
											 <td><c:out value="${featProds.emailAddress}" /></td>
										 <td><c:out value="${featProds.orderStatus}" /></td>
										 <td><c:out value="${featProds.orderTotal}" /></td>
										 <td><c:out value="${featProds.customerId}" /></td>
										 <td><c:out value="${featProds.addressId}" /></td>
							 </tr>
           		
				</c:forEach>
				 </tbody>
    </table>
				</div>
				 
		</div>
		
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