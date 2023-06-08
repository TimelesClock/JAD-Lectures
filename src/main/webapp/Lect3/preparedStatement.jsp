<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%
	String insertStr = "INSERT INTO Inventory (ITEM,QTY) VALUES (?,?)";
	Class.forName("com.mysql.jdbc.Driver");
	String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
	Connection conn = DriverManager.getConnection(connURL);
	PreparedStatement pstmt = conn.prepareStatement(insertStr);
	pstmt.setString(1, "P4");
	pstmt.setInt(2, 888);
	int count = pstmt.executeUpdate();
	conn.close();
	%>
</body>
</html>