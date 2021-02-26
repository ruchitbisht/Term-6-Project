<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link  rel="stylesheet" href="resources/css/bootstrap.min.css"></link>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<title>Products</title>
</head>
<body>

<!--  ${list  } -->
<div class="float: right"><a href="product-page">ADD PRODUCT</a> </div>
<table class="table table-striped">
	<tr>
		<th>Shoes Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Qty</th>
		<th>Mfg date</th>
		<th>Sale end on</th>
		<th>Description</th>
		<th>Shoes Image</th>
		<th>Action</th>
	</tr>
	
	<c:forEach var="product" items="${list }">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			<td>${product.mfg}</td>
			<td>${product.expiryDate}</td>
			<td>${product.description}</td>
			<td><img src='<c:url value='/resources/images/${product.id}.png' />' 
				class="rounded-circle" width="50px" height="50px" > </td>
			<td>
			<a href="<c:url value='/delete/${product.id}'/>" >Delete</a>|
			<a href="<c:url value='/update/${product.id}'/>" >Update</a>|
			<a href="<c:url value='/view-product?id=${product.id}'/>" >View</a>
			
				 
			</td>
		</tr>	
	</c:forEach>
	
	


</table>

</body>
</html>