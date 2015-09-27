<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="SmartLight.vo.Product"%>
<%@page import="SmartLight.dao.ProductDao"%>
<%@page import="SmartLight.dao.impl.ProductDaoImpl"%>
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
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
	if(session.getAttribute("query") == null){
		ProductDao dao = new ProductDaoImpl();
		try{
			dao.queryProductList(request);
			}
		catch (Exception e) {
			e.printStackTrace();
		} 
}

 %>	
	<%
	
	session.setAttribute("login", 1);
	
	
	
	 %>
</head>
<body>
<div id="wrapper">
	<div id="bg1">
		<div id="bg2">
			<div id="header">
				<div id="logo">
					<h1><a href="#">Great<span class="color1"> Special </span><span class="color2">Lamp</span></a></h1>
				</div>
				<!-- end #logo -->
				<div id="menu">
					<ul>
						<li class="first current_page_item"><a href="Register.jsp">Intro</a></li>
						<li><a href="about.jsp" class="color1">About</a></li>
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
						<p><img src="images/homepage05.jpg" alt="" width="206" height="84" class="alignright" /></p>
						<p>Asttroturfd is a free, fully standards-compliant CSS template designed by <a href="http://www.nodethirtythree.com/">NodeThirtyThree</a> for <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>. All of the photos in this design are courtesy of <a href="http://www.pdphoto.org/">PDPhoto.org</a>. It also includes a <a href="subpage.html">second layout</a>. This free template is released under a <a href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attributions</a> license, so you’re pretty much free to do whatever you want with it (even use it commercially) provided you keep the links in the footer intact.
							Have fun, and check out some of my commercial work at <a href="http://www.4templates.com/">4Templates</a>.</p>
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
				
				
				
				<div id="page">
				<div class="post" style="margin-bottom: 30px;">
					<div class="entry">
						<p><img src="images/homepage05.jpg" alt="" width="206" height="84" class="alignright" /></p>
						<p>you can also find the special using of following writing to know more detail of our comapny or your need</p>
					</div>
				</div>
				<div id="content">
					<div class="two-columns">
						<div class="column-one post">
							<h2 class="title">PART B + special using</h2>
							<div class="entry">
								<p><a href="#"><img src="images/homepage04.jpg" alt="" width="200" height="55" /></a></p>
								<p>please add your contact</p>
							</div>
						</div>
						<div class="column-two post">
							<h2 class="title color1">core products</h2>
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

