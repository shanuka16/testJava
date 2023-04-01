<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
	<ul class="nav nav-tabs">
	  <li class="nav-item">
	    <a class="nav-link active" href="welcome">Store</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="search-and-update.jsp">Search and Update</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="register-product.jsp">Register Product</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
	  </li>
	</ul>
	<br><p>${message}</p><br>
	<table class="table">
		<thead>
			<tr class="table-dark">
				<th>Product Code</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Delte Product</th>
			</tr>
		</thead>		
		<tbody>
			<tag:forEach var ="product" items="${productList}">
				<tr>
					<td>${product.productCode}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>
						<form method="post" action="product">
							<input type="hidden" name="productCode" value="${product.productCode}">
							<input type="hidden" name="type" value="delete">
							<button type="submit" class="btn btn-danger">DELETE</button>							
						</form>
					</td>
				</tr>
			</tag:forEach>			
		</tbody>
	</table>
</div>

</body>
</html>