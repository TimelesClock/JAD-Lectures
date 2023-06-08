<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%--
  - Author(s): Leong Yu Zhi Andy
  - Date: 5/11/2023
  - Copyright Notice: yes
  - Description: yes....?
--%>
<%
// Retrieve session attributes and assign values to variables
String sessUserID = (String) session.getAttribute("sessUserID");
String sessUserRole = (String) session.getAttribute("sessUserRole");

if (sessUserID == null) {
    response.sendRedirect("login.jsp?errCode=invalidLogin");
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@ include file="header.html"%>
<h1>pract3-part3-displayMember.jsp</h1>
    <span>Welcome... <%=sessUserID %></span>
    <br>
    <span>Your user role is: <%=sessUserRole%></span>
    <br>
    <button type="button" onclick = "window.location.href='login.jsp'">Home</button>
    <%@ include file="footer.html"%>
</body>
</html>
