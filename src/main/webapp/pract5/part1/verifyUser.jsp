<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String loginID = request.getParameter("loginid");
String pwd = request.getParameter("password");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
	    Class.forName("com.mysql.jdbc.Driver");
	    // Step 2: Define Connection URL
	    String connURL = "jdbc:mysql://localhost:3306/db1?user=root&password=root&serverTimezone=UTC";
	    // Step 3: Establish connection to URL
	    Connection conn = DriverManager.getConnection(connURL);
	    // Step 4: Create PreparedStatement object
	    PreparedStatement pstmt = conn.prepareStatement("SELECT password, name FROM member WHERE name=?");
	    pstmt.setString(1,loginID);
	    // Step 5: Execute SQL Command
	    ResultSet rs = pstmt.executeQuery();

	    if (rs.next()) {
	        String passwordFromDB = rs.getString("password");
	        String name = rs.getString("name");;
			String userRole = "adminUser";
	        if (passwordFromDB.equals(pwd)) {
	        	session.setAttribute("sessUserID",name);
	        	session.setAttribute("sessUserRole",userRole);
	            response.sendRedirect("displayMember.jsp?name=" + name);
	        } else {
	            response.sendRedirect("login.jsp?errCode=invalidLogin");
	        }
	    } else {
	        response.sendRedirect("login.jsp?errCode=invalidLogin");
	    }

	    // Step 6: Close resources
	    rs.close();
	    pstmt.close();
	    conn.close();
	} catch (Exception e) {
		System.err.println("Error :" + e);
	}

	%>
</body>
</html>