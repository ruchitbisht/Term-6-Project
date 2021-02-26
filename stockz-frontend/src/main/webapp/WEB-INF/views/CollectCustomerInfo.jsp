<%@include file = "header.jsp" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>User</h1>
				<p class="lead">User Details :</p>
		</div>
		<form:form commandName="order" class="form-horizontal">
			<h3>Basic Info ::</h3>
				<div class="form-group">
					<label for="name">User Name</label>
					<form:input path="cart.user.billingAddress.userName" id="name" class="form-control" />
				</div>
				<div class="form-group">
					<label for="email">User Email</label>
					<form:input path="cart.user.billingAddress.userEmail" id="email" class="form-control" />
				</div>
				<div class="form-group">
					<label for="phone">User Phone</label>
					<form:input path="cart.user.billingAddress.userPhone" id="phone" class="form-control" />
				</div>
			<br/>
			<h3>Billing Address ::</h3>
				<div class="form-group">
					<label for="billingZip">Street Name</label>
					<form:input path="cart.user.billingAddress.streetName" id="billingStreet" class="form-control" />
				</div>
				<div class="form-group">
					<label for="billingZip">Apartment Number</label>
					<form:input path="cart.user.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-control" />
				</div>
				<div class="form-group">
					<label for="billingZip">City</label>
					<form:input path="cart.user.billingAddress.city" id="billingCity" class="form-control" />
				</div>
				<div class="form-group">
					<label for="billingZip">State</label>
					<form:input path="cart.user.billingAddress.state" id="billingState" class="form-control" />
				</div>
				<div class="form-group">
					<label for="billingZip">Country</label>
					<form:input path="cart.user.billingAddress.country" id="billingCountry" class="form-control" />
				</div>
				<div class="form-group">
					<label for="billingZip">Zipcode</label>
					<form:input path="cart.user.billingAddress.zipCode" id="billingZip" class="form-control" />
				</div>
			<input type="hidden" name="_flowExecutionKey" />
			<br/><br/>
			<input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />
			<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
		</form:form>
	</div>
</div>

<%@include file = "footer.jsp" %>
</body>
</html>