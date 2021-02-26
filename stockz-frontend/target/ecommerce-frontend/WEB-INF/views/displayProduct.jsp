<%@include file="header.jsp" %>

<img src='<c:url value='/resources/images/${product.id}.png' />' 
				class="rounded-circle" width="50px" height="50px" >

<h2>${product.id }</h2>

<h2>${product.name }</h2>

<h2>${product.description }</h2>

<h2>${product.mfg }</h2>

</body>
</html>