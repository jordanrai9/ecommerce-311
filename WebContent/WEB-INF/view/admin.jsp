<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../jspf/header.jspf" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Welcome to the admin page</h2>
	<p>Click <a href="index.jsp">Here</a> to return to the home page.</p>
	<p>This is the page where store managers can add, remove, or update products from the site</p>
	<br /><hr>
	
	<div class="login-form">
		<form action="AdminController" method="POST">
			<p>Product Name:</p>
			<input type="text" name="productName">
			<br />
			<p>Product Description:</p>
			<input type="text" name="productDescription">
			<br />
			<p>Product Price:</p>
			<input type="number" step="0.01" min="0" name="productPrice">
			<br />
			<%-- get category names from application context variable ${categories} and
			add them to a dropdown list so you can select a category --%>
			<p>Select Category:</p>
			<select name="categorySelection">
				<c:forEach var="category" items="${categories}">
					<option>${category.categoryName}</option>
				</c:forEach>
					</select>
			<br /><br />
			<input id = "button" type="submit" value="Add Product">
		</form>
	</div>

</body>
</html>