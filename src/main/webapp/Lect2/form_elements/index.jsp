<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>UI TextArea</title>
</head>
<body>
	<div class="myForm">
		<h3>My Form</h3>
		<form action="uitextarea_action.jsp" name="form1" method="post">
			<input type="text" name="text1" size="32"><br>
			<textarea name="textarea1" cols="32" rows="5"></textarea>
			<br /> <input type="submit" name="submit" value="Button1"> <input
				type="submit" name="submit" value="Button2"> <input
				type="submit" name="submit" value="Button3"> <input
				type="Reset" value="Clear">
		</form>
	</div>
	<div class="myForm">


		<form action="uiselect_action.jsp" name="form1" method="post">
			<select name="list1" size="5">
				<option value="apple" selected>apple</option>
				<option value="orange">orange</option>
				<option value="banana">banana</option>
				<option value="papaya">papaya</option>
				<option value="lemon">durian</option>
				<option value="watermelon">watermelon</option>
			</select><br> <input type="submit" name="submit" value="Button1">
			<input type="submit" name="submit" value="Button2"> <input
				type="submit" name="submit" value="Button3"> <input
				type="Reset" value="Clear">
		</form>


	</div>
	<div class="myForm">
		<form action="uiradio_action.jsp" name="form1" method="post">
			<input type="radio" name="radio1" value="circle">circle<br>
			<input type="radio" name="radio1" value="square">square<br>
			<input type="radio" name="radio1" value="rectangle">rectangle<br>
			<input type="radio" name="radio1" value="oval">oval<br>
			<input type="submit" name="submit" value="Button1"> <input
				type="submit" name="submit" value="Button2"> <input
				type="submit" name="submit" value="Button3"> <input
				type="Reset" value="Clear">
		</form>
	</div>
</body>
</html>

