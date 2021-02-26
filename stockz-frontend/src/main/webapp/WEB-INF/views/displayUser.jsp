<%@include file="header.jsp" %>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrap.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	 <%@ taglib prefix = "spring" uri="http://www.springframework.org/tags" %>
-->

	<hr/>
	<div class="container">
		<ul>
			<li>User's Image :: <img src="<c:url value='/resources/images/user.png' />"
									class="square" height="250px" width="250px" /></li>
			<li>User's ID :: ${User.id }</li>
			<li>User's Username :: ${User.username }</li>
			<li>User's Password :: ${User.password }</li>
			<li>User's Email-ID :: ${User.email }</li>
			<li>User's Phone Number :: ${User.phno }</li>
			<li>User's Address :: ${User.address }</li>
			<li>User's Date Of Birth :: ${User.dob }</li>
		</ul>
<!-- 	<center>
			<p data-ng-controller="cartController">
				<a href="<spring:url value="/display-users/" />" class="btn btn-success">Back</a>
			</p>
		</center>
-->
	</div>
	<hr/>
<%@include file = "footer.jsp" %>
</body>
</html>