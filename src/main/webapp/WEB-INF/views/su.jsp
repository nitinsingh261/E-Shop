<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header id="header">
		<%@include file="template/header.jsp"%>
	</header>
	<section>
		<div class="container">
			<div class="row">
			<hr class="prettyline">
			<h4><b> Category Name</b></h4>
			<hr class="prettyline">
			<c:forEach var="asvf" items="${subC} ">
			<c:out value="${asvf.category_Id}"></c:out>
			</c:forEach>
			</div>
			</div>
			</section>
</body>
</html>