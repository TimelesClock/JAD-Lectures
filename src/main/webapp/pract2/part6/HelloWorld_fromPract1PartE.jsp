<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
String content = request.getParameter("content");
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script>
		/* ================================
		 Author: Leong Yu Zhi Andy (2205865)
		 Date: 04/27 / 2023
		 Description: ST0510/JAD week 2 submission
		 ================================*/
		let url = window.location.href
		if (!url.includes('?')){
			var id = prompt("Enter your Student ID:")
			var name = prompt("Enter your Name:")
			var hr = new Date().getHours()
			var end = ""
			if (hr < 12) {
				end += "Good Morning!.. "
			} else if (hr < 18) {
				end += "Good Afternoon!.. "
			} else {
				end += "Good Evening!.. "
			}
			end += name + " (" + id + ")"
			alert(end)
		}

		
	</script>
	<%
		String st = "<script>document.writeln(end)</script>";
		out.println(st);
	%>
</body>
</html>