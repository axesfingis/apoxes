<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOG-IN</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="main-div">
		<h3>Please enter your credentials to log in.</h3>
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
					<td><button>Log In</button></td>
				</tr>
			</table>
		</form>
		<form>
			<input style="background-color: #00BFFF; border-width: 1px; border-style: solid;
			border-color: #00BFFF; border-radius: 5px; padding: 15px; display: block;
			width: 100%; transition: 0.3s; -webkit-transition: 0.3s; -moz-transition: 0.3s;"
			type="button" value="Register"
			onclick="window.location.href='register.jsp'"/>
		</form>	
	</div>
</body>
</html>