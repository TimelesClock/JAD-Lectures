<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%--

  - Author(s): Leong Yu Zhi Andy
  - Date: 5/11/2023
  - Copyright Notice: yes
  - Description: yes....?
  --%>
<%
String userRole = request.getParameter("userRole");
String name = request.getParameter("name");
%>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@ include file="header.html"%>
<h1>pract3-part3-displayMember.jsp</h1>
	<span>Welcome... <%=name %></span>
	<br>
	<span>Your user role is: <%=userRole%></span>
	<br>
	<button type="button" onclick = "window.location.href='login.jsp'">Home</button>
	<%@ include file="footer.html"%>
</body>
</html>