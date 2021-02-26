<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>User</h1>
				<p class="lead">User Details :</p>
		</div>
		<form:form commandName="order" class="form-horizontal">
			<h3>Shipping Address ::</h3> 
				<div class="form-group">
					<label for="shippingStreet">Street Name</label>
					<form:input path="cart.user.shippingAddress.streetName" id="shippingStreet" class="form-control" />
				</div>
				<div class="form-group">
					<label for="shippingApartmentNumber">Apartment Number</label>
					<form:input path="cart.user.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-control" />
				</div>
				<div class="form-group">
					<label for="shippingCity">City</label>
					<form:input path="cart.user.shippingAddress.city" id="shippingCity" class="form-control" />
				</div>
				<div class="form-group">
					<label for="shippingState">State</label>
					<form:input path="cart.user.shippingAddress.state" id="shippingState" class="form-control" />
				</div>
				<div class="form-group">
					<label for="shippingCountry">Country</label>
					<form:input path="cart.user.shippingAddress.country" id="shippingCountry" class="form-control" />
				</div>
				<div class="form-group">
					<label for="shippingZip">ZipCode</label>
					<form:input path="cart.user.shippingAddress.zipCode" id="shippingZip" class="form-control" />
				</div>
			<input type="hidden" name="_flowExecutionKey" />
			<br/><br/>
			<button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
			<input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingInfoCollected" />
			<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
		</form:form>
	</div>
</div>

<%@include file = "footer.jsp" %>
</body>
</html>