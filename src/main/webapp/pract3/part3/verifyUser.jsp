<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%--

  - Author(s): Leong Yu Zhi Andy
  - Date: 5/4/2023
  - Copyright Notice: yes
  - Description: yes....?
  --%>
<%
String loginID = request.getParameter("loginid");
String pwd = request.getParameter("password");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	if (loginID == null || pwd == null) {
		response.sendRedirect("login.jsp");
	}

	if (!loginID.equals("Lincoln") || !pwd.equals("abc123")) {
		response.sendRedirect("login.jsp?errCode=invalidLogin"); // Brings user to another webpage
	}
	String userRole = "adminUser";
	String name = "Lincoln";
	response.sendRedirect("displayMember.jsp?name=" + name + "&userRole=" + userRole);
	%>

<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding:20px;
}

</style>
</html>