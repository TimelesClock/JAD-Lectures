<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
		// Step1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Connection URL
		String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		// Step 4: Create Statement object
		Statement stmt = conn.createStatement();
		// Step 5: Execute SQL Command

		String simpleProc = "{call reset()}";
		CallableStatement cs = conn.prepareCall(simpleProc);

		cs.execute();

		ResultSet rs = cs.getResultSet();

		int id = 0;
		String name = "";
		String password = "";

		// Step 6: Process Result
		while (rs.next()) {
			id = rs.getInt("id");
			name = rs.getString("name");
			password = rs.getString("password");
	%>
	<div style="border: 1px solid red; padding: 1em; margin: 1em 0;">
		<div>
			ID:
			<%=id%></div>
		<div>
			Name:
			<%=name%></div>
		<div>
			Password:
			<%=password%></div>
	</div>
	<%
	}
	// Step 7: Close connection
	conn.close();

	System.out.println("Woots");

	} catch (Exception e) {
	System.err.println("Error :" + e);
	}
	%>
</body>
</html>