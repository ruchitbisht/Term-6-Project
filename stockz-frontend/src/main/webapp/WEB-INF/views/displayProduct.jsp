<%@include file="header.jsp" %>
<div class="container">
<ul>
	<li>Product's Image :: <img src='<c:url value='/resources/images/${product.id}.png' />' 
				class="rounded-circle" width="50px" height="50px" ></li>
	<li>Product's ID :: ${product.id }</li>

	<li>Product's Name :: ${product.name }</li>

	<li>Product's Description :: ${product.description }</li>

	<li>Product's MFG Date :: ${product.mfg }</li>
</ul>	
<p data-ng-controller="cartController">
			<a href="<spring:url value="/display-products/" />" class="btn btn-success">Back!</a>
			<a href="<spring:url value="/cart?id=${Product.id }" />" class="btn btn-warning btn-large" data-ng-click="addToCart('${Product.id }')">
				<span class="glyphicon glyphicon-shopping-cart"></span>Order Now!
			</a>
		</p>
</div>
<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>