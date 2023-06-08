<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String[] selectedModules = request.getParameterValues("modules"); %>
<%--

  - Author(s): Leong Yu Zhi Andy
  - Date: 5/4/2023
  - Copyright Notice: yes
  - Description: yes....?
  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Selected Modules</title>
</head>
<body>
  <%-- Display the selected modules using an HTML unordered list (ul) --%>
  <% if (selectedModules != null) { %>
    <h2>You have selected:</h2>
    <ul>
      <% for (String module : selectedModules) { %>
        <li><%= module %></li>
      <% } %>
    </ul>
  <% } else { %>
    <h4>You have no modules this semester.</h4>
  <% } %>
</body>
</html>