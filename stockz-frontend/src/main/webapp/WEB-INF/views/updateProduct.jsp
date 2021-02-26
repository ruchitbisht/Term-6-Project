<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link  rel="stylesheet" href="resources/css/bootstrap.min.css"></link>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add Products Page</title>
</head>
<body>
	<div class="container">
			<h1 style="text-align: center;font-weight: bold;">Sneaker Database</h1><br><br>
			<form action="add-product" modelAttribute="product" method="get">

					<div class="form-group">
						<label for="name" class="sr-only">Shoe Name</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Shoe Name">
					</div>
					<div class="form-group">
						<label for="price" class="sr-only">Price</label>
						<input type="number" class="form-control" id="price" name="price" placeholder="Price">
					</div>
					<div class="form-group">
						<label for="quantity" class="sr-only">Quantity</label>
						<input type="number" class="form-control" id="quantity" name="quantity" placeholder="Quantity">
					</div>
					
					<div class="form-group">
						<label for="mfg" class="sr-only">Mfg</label>
						<input type="date" class="form-control" id="mfg" name="mfg" >
					</div>
					<div class="form-group">
						<label for="expiryDate" class="sr-only">Sale end</label>
						<input type="date" class="form-control" id="expiryDate" name="expiryDate" >
					</div>
					<div class="form-group">
						<label for="description" class="sr-only">Description</label>
						<input type="text" class="form-control" id="description" name="description" placeholder="Shoes Description">
					</div>
					
					<button type="submit" style="text-align: center" class="btn btn-primary">Add Sneaker</button> ||
					<button type="reset" style="text-align: center" class="btn btn-primary">Reset</button>
					

			</form>
	</div>
</body>
</html>