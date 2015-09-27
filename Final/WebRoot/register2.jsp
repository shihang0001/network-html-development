<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>Login Form to shihang company -register-mis2</title>

	<!--- CSS --->
	<link rel="stylesheet" href="style.css" type="text/css" />
	</head>
  
	<body>
		<div id="container">
			<form method="post" action="./register">
				<div class="login">USERNAME EXSIST ! RETRY</div>
				<div class="username-text">Username:</div>
				<div class="password-text">Password:</div>
				<div class="username-field">
					<input type="text" name="username" value="shih01" />
				</div>
				<div class="password-field">
					<input type="password" name="password" value="azmind" />
				</div>
		<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me"><a href="#">email</a> or facebook</a></label>
				
				<div class="password-field2">
					<input type="password" name="conpassword" value="azmind" />
				</div>
				<input type="submit" name="submit" value="Sign!" />
			</form>
		</div>
		<div id="footer">
			<p>designed by hang&copy;</p>
		</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' 
charset='gb2312'></script></div>
</body>
</html>