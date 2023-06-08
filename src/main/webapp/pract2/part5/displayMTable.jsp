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
String upperLimit = request.getParameter("upperLimit");
int upperLimitNum = 0;
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	if (upperLimit == null){
		response.sendRedirect("login.jsp");
	}
	try{
		upperLimitNum = Integer.parseInt(upperLimit);
	}catch(Exception e){
		response.sendRedirect("customMTable.jsp?errCode="+e);
	}

	%>
	<h1>Multiply by <%=upperLimitNum %></h1>
	<table>
		<%

		for (int i = 1; i <= 10; i++) {
			out.println(String.format("<tr><td>%s x %s</td><td>%s</td></tr>", i, upperLimitNum, upperLimitNum*i));
		}
		%>
	</table>
	<a href = "customMTable.jsp">Go back</a>
	<button type="button" onclick = "window.location.href='customMTable.jsp'">Back</button>
</body>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding:5px;
}

</style>
</html>