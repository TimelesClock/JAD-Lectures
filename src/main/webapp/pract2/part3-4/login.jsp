<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%
String err = request.getParameter("errCode");
%>
<title>Insert title here</title>
</head>

<body>
	<form action="verifyUser.jsp" name="form1" method="post">
		<input type="text" name="loginid"> <input type="password"
			name="password"> <input type="submit" name="btnSubmit"
			value="Login"> <input type="Reset" value="Clear">
	</form>
	<%
	if(err != null && !err.equals("")){
		out.print(err);
	}
	%>
</body>
</html>