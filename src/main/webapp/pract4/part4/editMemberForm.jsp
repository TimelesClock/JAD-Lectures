<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Member Form</title>
</head>
<body>
	<%@ include file="header.html"%>
	<%@ page import="java.sql.*"%>
	<%
	try {
		// Step 1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Connection URL
		String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		// Step 4: Create PreparedStatement object
		PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member WHERE name=?");
		pstmt.setString(1, request.getParameter("name"));
		// Step 5: Execute SQL Command
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
	%>
	<div>
			id:
			<%=id%>, name:
			<%=name%></div>
	<h1>Edit Member Form</h1>
	<form style="margin: 0 auto; width: 300px;" action="updateMember.jsp" method="post">
		<table style="border-collapse: collapse; width: 100%;">
			<tr>
			<td style="border: 1px solid black;text-align: center;"><label for="name">id:</label></td>
				<td style="border: 1px solid black;text-align: center;"><input name="id" value="<%=id%>" readonly style="border: none;"></td>
			</tr>
			<tr>
				<td style="border: 1px solid black;text-align: center;"><label for="name">name:</label></td>
				<td style="border: 1px solid black;text-align: center;"><input type="text" name="name" value="<%=name%>" ></td>
			</tr>
			<tr>
				<td colspan="2" style="border: 1px solid black; text-align: center;"><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
	<%
	}
	// Step 6: Close connection
	conn.close();

	System.out.println("Woots");

	} catch (Exception e) {
	System.err.println("Error: " + e);
	}
	%>
	<%@ include file="footer.html"%>
</body>
</html>
