<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>REGISTER</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="main-div">
		<h3>Provide the necessary info to register.</h3>
		<form method="post" action="TryLogin">
			<table>
				<tr>
					<td><input type="text" name="username"
						placeholder="Username..."></td>
				</tr>
				<tr>
					<td><input type="password" name="password"
						placeholder="Password..."></td>
				</tr>
				<tr>
					<td><input type="password" name="password2"
						placeholder="Retype Password..."></td>
				</tr>
				<tr>
					<td><button type="submit" name="action" value="register">Register</button></td>
				</tr>
			</table>
		</form>
		<h4>Already have an account?</h4>
		<form>
			<input style="background-color: #00BFFF; border-width: 1px; border-style: solid;
			border-color: #00BFFF; border-radius: 5px; padding: 15px; display: block;
			width: 100%; transition: 0.3s; -webkit-transition: 0.3s; -moz-transition: 0.3s;"
			type="button" value="Login"
			onclick="window.location.href='login.jsp'"/>
		</form>	
	</div>
</body>
</html>