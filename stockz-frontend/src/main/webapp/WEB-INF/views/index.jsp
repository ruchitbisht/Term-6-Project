<%@ include file="header.jsp" %>

<h2>Student Name:</h2>
<ol>
<c:forEach var="name" items="${message}" >
<li>${name }</li>
</c:forEach>
</ol>

</body>
</html>
