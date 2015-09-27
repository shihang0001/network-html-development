<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>: : shihang design company -error (have log in) : :</title>

	<!--- CSS --->
	<link rel="stylesheet" href="style.css" type="text/css" />

  </head>
  
  <body>
    	<div id="container">
			<div class="welcome">
				<div class="welcome-user">ERROR, MISTAKES!</div>
				<div class="welcome-text">
             <p>   We are sorry for telling you the mistakes might happened in your webset. </p>
                 </hr>                         > ~ <
              <p>  Please try to check your network or try to log in again !!!</p>
              
              <p>   Or you have not sign in yet</p>
                </div>
				<div class="home"><a href="./login.jsp">RETRY</a></div>
			</div>
		</div>
		<div id="footer">
			<p>designed by shihang&copy;</p>
		</div>
  </body>
</html>