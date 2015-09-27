<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="SmartLight.vo.Product"%>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--


-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>oh!</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    
    <title>My JSP 'Product.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <%
    String select = (String)request.getParameter("proSelect");
    ArrayList<Product> proList = (ArrayList<Product>)session.getAttribute("list");
    session.setAttribute("select",select);
	int show = Integer.parseInt(select);
	Product proShow = proList.get(show);
	
	session.setAttribute("invetory",proShow.getProInvetory() );
     %>
	



</head>
<body>
<div id="wrapper">
	<div id="bg1">
		<div id="bg2">
			<div id="header">
				<div id="logo">
					<h1><a href="#">great <span class="color1">special </span><span class="color2">lamp</span></a></h1>
				</div>
				<!-- end #logo -->
				<div id="menu">
					<ul>
						<li class="first current_page_item"><a href="index.jsp">Intro</a></li>
						<li><a href="about.jsp" class="color1">About</a></li>
						<li><a href="ShoppingCart.jsp" class="color2">Cart</a></li>
						<li><a href="Login.jsp" class="color1">log</a></li>
					</ul>
				</div>
				<!-- end #menu -->
			</div>
			<!-- end #header -->
			<div id="page">
				<div id="content">
					<div class="post">
						<h2 class="title">PRODUCT</h2>
						<div class="entry">
							
							
			 	<%=proShow.getProName() %>
  	<%=proShow.getParameter() %>
  	<%=proShow.getPrice() %>
  	<%=proShow.getProInvetory() %>
  	<img src="<%=proShow.getImgUrl() %>" />
  	<form action="./Product"  method="post">
  		Quantity:<input type="text" name="proNum" onkeyup="value=value.replace(/[^\d]/g,'') "   
				onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" value="1" onfocus="if(value=='1'){value=''}"   
                onblur="if(value==''){value='1'}"/>
		<input type="submit" name="submit" value="Submit"> 
  	</form>
  				
							
							
							
							
							
							
							
						</div>
						<div class="meta">
							<p class="tags"><strong>Tags:</strong> <a href="#">dignissi</a>, <a href="#">metiam</a>, <a href="#">aliquam</a></p>
							<p class="links"><a href="#">Comments (99)</a> &nbsp;&bull;&nbsp; <a href="#">Permalink</a> &nbsp;&bull;&nbsp; <a href="#">Continue Reading</a> </p>
						</div>
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<div class="post">
						<h2 class="title color2">Interdum Volutpat</h2>
						<div class="entry">
							<p><img src="images/homepage05.jpg" alt="" width="206" height="84" /></p>
							<ul class="list2">
								<li class="first"><a href="#"> Quisque suscipit quam</a></li>
								<li><a href="#">Vel aliquet tincidunt eros</a></li>
								<li><a href="#">Nisi ultrices interdum</a></li>
								<li><a href="#">Est purus vitae leo Pellentesque</a></li>
								<li><a href="#">Lectus et tortor tincidunt</a></li>
								<li><a href="#">Dignissim etiam nulla sed</a></li>
								<li><a href="#">Aliquam erat volutpat</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
				<div id="footer">
					<p>(c) 2015 SiteName.com. Design by <a href="http://www.hirtythree.com/">NodeThirtyThree</a> and <a href="http://reecsstemplates.org/">Free CSS Templates</a>.</p>
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
