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
	if (upperLimit == null) {
		response.sendRedirect("login.jsp");
	}
	try {
		upperLimitNum = Integer.parseInt(upperLimit);
	} catch (Exception e) {
		response.sendRedirect("customMTable.jsp?errCode=" + e);
	}
	%>
	<table>
		<tr>
			<td>
				<h1>Using out.print</h1>
				<table>
					<%
					for (int i = 1; i <= 10; i++) {
						out.println(String.format("<tr><td>%s x %s</td><td>%s</td></tr>", i, upperLimitNum, upperLimitNum * i));
					}
					%>
				</table>
			</td>
			<td>
			<h1>Using JSP expression tag</h1>
				<table>
					<%
					for (int i = 1; i <= 10; i++) {
					%>
					<tr>
						<td><%=i%> x <%=upperLimitNum%></td>
						<td><%=upperLimitNum * i%></td>
					</tr>
					<%
					}
					%>
				</table>
			</td>
		</tr>
	</table>
</body>
<style>
table, th,tr, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 5px;
}
</style>
</html>