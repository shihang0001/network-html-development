<%@ page language="java" pageEncoding="GB18030"%>
 
<html> 
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>: : shihang design company log in : :</title>

	<!--- CSS --->
	<link rel="stylesheet" href="style.css" type="text/css" />

	</head>
	<body>
<div id="container">
			<form method="post" action="./login">
				<div class="login">LOGIN</div>
				<div class="username-text">Username:</div>
				<div class="password-text">Password:</div>
				<div class="username-field">
					<input type="text" name="username" value="shih01" />
				</div>
				<div class="password-field">
					<input type="password" name="password" value="azmind" />
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">Remember me</label>
				<div class="forgot-usr-pwd">No user? <a href="./register.jsp">register</a> or <a href="#">forget</a>?</div>
				<input type="submit" name="submit" value="Go" />
			</form>
		</div>
		<div id="footer">
			<p>designed by hang&copy;</p>
		</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' 
charset='gb2312'></script></div>
		</form>
	</body>
</html>

