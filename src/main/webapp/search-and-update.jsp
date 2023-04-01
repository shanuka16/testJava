<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KFC</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" href="welcome">Store</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link active" href="search-and-update.jsp">Search and Update</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="register-product.jsp">Register Product</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
		  </li>
		</ul>	
		<br><p>${message}</p><br>
		
		<h3>Search The Product</h3>
		<form method="get" action="product">
			<lable for="txtProductCode">Product Name</lable>
			<input type="text" id="txtProductCode" name="productCode" class="form-control"/>
			<input type="hidden" name="type" value="specific"><br/>
			<button type="submit" class="btn btn-success">Search</button>			
		</form>
		<br/><br/>
		<h3>Update The Product</h3>
		<form method="post" action="product">
			<lable for="txtProductCode">Product Code</lable>
			<input type="text" id="txtProductCode" name="productCode" class="form-control" value="${product.productCode}"/>
			
			<lable for="txtProductName">Product Name</lable>
			<input type="text" id="txtProductName" name="productName" class="form-control" value="${product.name}"/>			
			<lable for="txtPrice">Product Price</lable>
			<input type="number" id="txtPrice" name="price" class="form-control" value="${product.price}"/>
			<input type="hidden" name="type" value="update"><br/>
			<button type="submit" class="btn btn-warning">Update</button>			
		</form>
	</div>

</body>
</html>