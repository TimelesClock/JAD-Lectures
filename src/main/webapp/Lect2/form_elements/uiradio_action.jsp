<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String buttonpressed = request.getParameter("submit");
String radio1 = request.getParameter("radio1");
%>
<html>
<head>
<title>UI Radio</title>
</head>
<body>
	Submit Button pressed is:
	<%=buttonpressed%><br> Selected item is:
	<%=radio1%><br>
</body>
</html>
