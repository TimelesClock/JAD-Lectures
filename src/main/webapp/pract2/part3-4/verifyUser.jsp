<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%--

  - Author(s): Leong Yu Zhi Andy
  - Date: 4/27/2023
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
<body>
	<%
	if (loginID == null || pwd == null){
		response.sendRedirect("login.jsp");
	}
	
	if (!loginID.equals("Lincoln") || !pwd.equals("abc123")) {
		response.sendRedirect("login.jsp?errCode=invalidLogin"); // Brings user to another webpage
	}
	%>
	<h1>Welcome, Lincoln</h1>
	<table>
		<%
		int upperLimit = 5;
		for (int i = 1; i <= 5; i++) {
			out.println(String.format("<tr><td>%s x %s</td><td>%s</td></tr>", i, upperLimit, upperLimit*i));
		}
		%>
	</table>
</body>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding:20px;
}

</style>
</html>