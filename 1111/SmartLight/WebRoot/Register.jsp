<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--



-->
<html>
<head>

    <base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>special design of lamp</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
 <% if(session.getAttribute("login") == null){
    %>
    <script>	
	var choose;
	choose=confirm("log out?");
	if(choose == true){
    window.location.href="Error.jsp";
	}else{ 
	window.location.href="index.jsp";
	}
	
	</script>
  <%} %>

<div id="wrapper">
	<div id="bg1">
		<div id="bg2">
			<div id="header">
				<div id="logo">
					<h1><a href="#">team<span class="color1"> BUPT </span><span class="color2">Lamp</span></a></h1>
				</div>
				<!-- end #logo -->
				<div id="menu">
					<ul>
						<li class="first current_page_item"><a href="index.html">Intro</a></li>
						<li><a href="about.html" class="color1">About</a></li>
						<li><a href="ShoppingCart.jsp" class="color2">Cart</a></li>
						<li><a href="Login.jsp" class="color1">log</a></li>
					</ul>
				</div>
				<!-- end #menu -->
			</div>
			<!-- end #header -->
			<div id="page">
				<div class="post" style="margin-bottom: 30px;">
					<div class="entry">

        <h2>here to try new command</h2>
        <h3>Register</h3>
        
<form method="post" action="./Register">
    username:<input type="text" name="username" /><br/>
    password:<input type="text" name="password" /><br/>
    Repeat password:<input type="text" name="password2" /><br/>
    Telephone Number:<input type="text" name="phone" onkeyup="value=value.replace(/[^\d]/g,'') "   
				onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" /><br/>
    E-mail Address:<input type="text" name="e-mail" /><br/>
    Addresss:<input type="text" name="address" /><br/>
    <input type="submit" name="submit" value="Submit">    
    </form>
          
          
          
        
        


					</div>
					
					
					
					
						<div class="column-two post">
							<h2 class="title color1">or see more products</h2>
							<div class="entry">
								<ul class="list1">
									<li><a href="#">Quisque suscipit quam</a><br />
										<small>Vel aliquet tincidunt eros</small></li>
									<li class="alt"><a href="#">team 1099</a><br />
										<small>Nisi ultrices interdum</small></li>
									<li><a href="#">Nisi ultrices interdum</a><br />
										<small>Est purus vitae leo Pellentesque</small></li>
									<li class="alt"><a href="#">Est purus vitae leo Pellentesque</a><br />
										<small>Lectus et tortor tincidunt</small></li>
								</ul>
							</div>
						</div>					
					



<div id="content">
					<div class="two-columns">
						<div class="column-one post">
							<h2 class="title">about the life controll</h2>
							<div class="entry">
								<p><a href="#"><img src="images/homepage04.jpg" alt="" width="200" height="55" /></a></p>
								<p>Quisque suscipit, quam vel aliquet tincidunt, eros nisi ultrices urna, a Pellentesque a lectus et tortor tincidunt dignissim etiam. Aliquam erat volutpat. Quisque risus nunc, eleifend.</p>
							</div>
						</div>
						<div class="column-two post">
							<h2 class="title color1">more products</h2>
							<div class="entry">
								<ul class="list1">
									<li><a href="#">Quisque suscipit quam</a><br />
										<small>Vel aliquet tincidunt eros</small></li>
									<li class="alt"><a href="#">team 1099</a><br />
										<small>Nisi ultrices interdum</small></li>
									<li><a href="#">Nisi ultrices interdum</a><br />
										<small>Est purus vitae leo Pellentesque</small></li>
									<li class="alt"><a href="#">Est purus vitae leo Pellentesque</a><br />
										<small>Lectus et tortor tincidunt</small></li>
								</ul>
							</div>
						</div>
					</div>					
					
					
					
					
					

					
					
					
					
					
					
					
				</div>
				<div id="content">
					<div class="two-columns">
						<div class="column-one post">
							<h2 class="title">about the life controll</h2>
							<div class="entry">
								<p><a href="#"><img src="images/homepage04.jpg" alt="" width="200" height="55" /></a></p>
								<p>Quisque suscipit, quam vel aliquet tincidunt, eros nisi ultrices urna, a Pellentesque a lectus et tortor tincidunt dignissim etiam. Aliquam erat volutpat. Quisque risus nunc, eleifend.</p>
							</div>
						</div>
						<div class="column-two post">
							<h2 class="title color1">more products</h2>
							<div class="entry">
								<ul class="list1">
									<li><a href="#">Quisque suscipit quam</a><br />
										<small>Vel aliquet tincidunt eros</small></li>
									<li class="alt"><a href="#">team 1099</a><br />
										<small>Nisi ultrices interdum</small></li>
									<li><a href="#">Nisi ultrices interdum</a><br />
										<small>Est purus vitae leo Pellentesque</small></li>
									<li class="alt"><a href="#">Est purus vitae leo Pellentesque</a><br />
										<small>Lectus et tortor tincidunt</small></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- end #content -->		
				<div id="sidebar">
					<div class="post">
						<h2 class="title color2">ABOUT CONTACT TEAM</h2>
						<div class="entry">
							<ul class="list2">
								<li class="first"><a href="#">The leader of our team </a></li>
								<li><a href="#">The designer of our team</a></li>
								<li><a href="#">The best looking of our video</a></li>
								<li><a href="#">more thing to add</a></li>
								<li><a href="#">download the video</a></li>
								<li><a href="#">about the e-commerce</a></li>
								<li><a href="#">more detials</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
				<div id="footer">
					<p>(c) 2015 smart lamp company. Design by <a href="http://www.baidu.com/">BUAA</a> and <a href="http://www.google.org/">google</a>.</p>
				</div>
				<!-- end #footer -->
			</div>
			<!-- end #page -->
		</div>
	</div>
</div>
<!-- end #wrapper -->
</body>
</html>
