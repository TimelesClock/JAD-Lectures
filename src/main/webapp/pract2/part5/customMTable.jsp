<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
String err = request.getParameter("errCode");
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action = "displayMTable.jsp" name = "form1" method = "post">
		<h5>Input multiplication number</h5>
		<input type="text" name="upperLimit">  <input type="submit" name="btnSubmit"
			value="Enter"> <input type="Reset" value="Clear">
	</form>
	<%
	if(err != null && !err.equals("")){
		out.print(err);
	}
	%>
</body>
</html>