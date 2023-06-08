<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Member</title>
</head>
<body>
<%@ include file="header.html"%>
    <%@ page import="java.sql.*" %>
    <%
    try {
        // Step 1: Load JDBC Driver
        Class.forName("com.mysql.jdbc.Driver");
        // Step 2: Define Connection URL
        String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
        // Step 3: Establish connection to URL
        Connection conn = DriverManager.getConnection(connURL);
        // Step 4: Create PreparedStatement object
        PreparedStatement pstmt = conn.prepareStatement("UPDATE member SET name = ? WHERE id = ?");
        pstmt.setString(1, request.getParameter("name"));
        pstmt.setInt(2, Integer.parseInt(request.getParameter("id")));
        // Step 5: Execute SQL Command
        int rowsAffected = pstmt.executeUpdate();

        // Get the updated member details
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");

        %>
        <div>
        uId is.. <%= id%>..uName is..<%=name %>
        </div>
		<div>
		Number of row(s) affected:...<%= rowsAffected %>
		</div>
		<button onclick = "window.location.href='listMembers.jsp'">
		Back to List Members
		</button>
        <%
        // Step 6: Close connection
        conn.close();

    } catch (Exception e) {
        System.err.println("Error: " + e);
    }
    %>
    <%@ include file="footer.html"%>
</body>
</html>
