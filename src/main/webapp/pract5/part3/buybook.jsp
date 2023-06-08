<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
		String errorCode = (String) request.getParameter("err");
		if (errorCode != null && !errorCode.isEmpty()) { 
	%>
		<div style="color: red; font-weight: bold;">
			Error: <%= errorCode %>
		</div>
	<% } %>
	<form method="POST" action="add2Cart.jsp"
		style="display: flex; flex-direction: column; gap: 1rem; width: fit-content">
		<h1>Buy book</h1>
		
		<input type="text" name="isbn" placeholder="Enter ISBN" required /> <input
			type="text" name="title" placeholder="Enter title" required /> <input
			type="text" name="author" placeholder="Enter author" required /> <input
			type="text" name="publisher" placeholder="Enter publisher" required />
		<input type="number" name="quantity" placeholder="Enter quantity"
			required /> <input type="text" name="price"
			placeholder="Enter price" required />
			<button type="submit">Add</button>
	</form>
	
</body>
</html>