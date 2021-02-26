<%@include file = "header.jsp" %>
<hr/>
	<h2>
		<center>Users Page</center>
	</h2>
	<!-- ${List} --->
	<hr>
	<div style="float: left;">
		<a href="user-page">Add user</a>
	</div>
	<table class = "table table-striped">
		<tr>
			<th>User Id</th>
			<th>Username</th>
			<th>Password</th>
			<th>Email id</th>
			<th>Phone Number</th>
			<th>Address</th>
			<th>Date Of Birth</th>
			<th>User Image</th>
			<th>User Actions</th>
		</tr>
	<c:forEach var = "user" items = "${List }">
		<tr>
			<td>${user.id }</td>
			<td>${user.username }</td>
			<td>${user.password }</td>
			<td>${user.email }</td>
			<td>${cususertomer.phno }</td>
			<td>${user.address }</td>
			<td>${user.dob }</td>
			<td>
				<img src="<c:url value='/resources/images/user.png' />" class="rounded-circle" height="50px" width="50px" />
			</td>
			
			<td>
	<!-- for links --> 
			<a href = "<c:url value='/view-user/${user.id }' />">View</a> |
			<a href = "update-user/${user.id }">Update</a> |
			<a href = "delete-user/${user.id }">Delete</a> 
	<!-- for buttons --> 
		 	<!-- <input type = "submit" value = "view" />
			 	 <input type = "submit" value = "update" />
			 	 <input type = "submit" value = "delete" /> -->
			</td>
		</tr>
	</c:forEach>
	</table>
<%@include file = "footer.jsp" %>
</body>
</html>