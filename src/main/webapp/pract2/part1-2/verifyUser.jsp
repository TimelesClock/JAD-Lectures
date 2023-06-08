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
 String loginID = request.getParameter("loginid");
 String pwd = request.getParameter("password");
 %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Login ID: <%=loginID %>
	Password: <%=pwd %>
</body>
</html>