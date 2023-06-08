<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String buttonpressed = request.getParameter("submit");
String list1 = request.getParameter("list1");
%>
<html>
<head>
<title>UI Select</title>
</head>
<body>
	Submit Button pressed is:
	<%=buttonpressed%>
	<br> Selected item is:
	<%=list1%>
	<br>
<body>
</html>