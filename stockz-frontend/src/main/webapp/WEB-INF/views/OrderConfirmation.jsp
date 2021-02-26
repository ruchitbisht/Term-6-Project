<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<section class="container" data-ng-app="cartApp" style="height: 475px;">
	<div class="row" style="padding-left: 200px;">
		<h2>Please Confirm Your Address!</h2>
			<div class="col-md-6">
				<form:form method="POST" action="OrderConfirm/${order.orderId }" commandName="InstOrder" class="form-horizontal">
					<table>
						<tr>
							<td>Product Name:</td>
							<td>${product.name }</td>
						</tr>
						<tr>
							<td>Product Description:</td>
							<td>${product.description }</td>
						</tr>
						<tr>
							<td>Product Quantity:</td>
							<td>${product.quantity }</td>
						</tr>
						<tr>
							<td>Product Total Price:</td>
							<td>${product.price }</td>
						</tr>
						<tr>
							<td>Enter Your Shipping Address:</td>
							<td>
								<form:textarea path="address" rows="3" cols="28"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input type="submit" value="Confirm Order" class="btn btn-success" />
							</td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</section>
<br/>
<hr/>
<%@include file = "footer.jsp" %>

</body>
</html>