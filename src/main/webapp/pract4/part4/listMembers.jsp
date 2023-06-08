<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<style>
    table,th, td {
        border: 1px solid black;
    }
</style>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%
	try {
		// Step 1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Connection URL
		String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		// Step 4: Create Statement object
		Statement stmt = conn.createStatement();
		// Step 5: Execute SQL Command

		String sqlStr = "SELECT * FROM member";
		ResultSet rs = stmt.executeQuery(sqlStr);
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Action</th>
		</tr>
		<%
		// Step 6: Process Result
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td>
			<button onclick = "window.location.href='editMemberForm.jsp?name=<%=name %>'">edit</button>
			</td>
		</tr>
		<%
		}
		// Step 7: Close connection
		conn.close();

		System.out.println("Woots");

		} catch (Exception e) {
		System.err.println("Error: " + e);
		}
		%>
	</table>
	
</body>
</html>
