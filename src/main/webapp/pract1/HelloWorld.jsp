<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	out.print("Hello World!....");	%>
</body>
<script>
/* ================================
	Author: Leong Yu Zhi Andy (2205865)
	Date: 03 / 20 / 2023
	Description: ST0510/JAD week 1 submission
	================================*/
var id = prompt("Enter your Student ID:")
var name = prompt("Enter your Name:")
var hr = new Date().getHours()
var end = ""
if (hr < 12){
	end += "Good Morning!.. "
}else if (hr <18){
	end += "Good Afternoon!.. "
}else{
	end += "Good Evening!.. "
}
end += name +" ("+id+")"
alert(end)
</script>
</html>