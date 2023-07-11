<%@page import = "dbaccess.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display User Details</title>
</head>
<body>
	<h1>User Details</h1>
	<%
	User user=(User)request.getAttribute("userData");
	if(user!=null){
	%>
	UserID=<%=user.getUserid() %>
	Gender = <%= user.getGender() %>
	Age = <%=user.getAge() %>
<%} %>	
</body>
</html>