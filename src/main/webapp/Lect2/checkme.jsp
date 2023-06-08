<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!boolean login_status = false;%>
	<%
	String user = request.getParameter("user");
	String pwd = request.getParameter("pwd");

	if (user == null || pwd == null) {
		response.sendRedirect("login.jsp");
	}

	if (user.equals("") || pwd.equals("")) {
		response.sendRedirect("login.jsp");
	}

	if (user.equals("me") && pwd.equals("secret")) {
		response.sendRedirect("login_okay.jsp"); // Brings user to another webpage
	} else {
		response.sendRedirect("login_bad.jsp"); // Brings user to another webpage
	}
	%>


</body>
</html>