<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="SmartLight.vo.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--



-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>special design of lamp</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

    <title>My JSP 'ProductList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<script type="text/javascript">



</script>

</head>
<body>
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
				<div class="post" style="margin-bottom: 30px;">
					<div class="entry">
					
   <%
 
		ArrayList<Product> proList = (ArrayList<Product>)session.getAttribute("list");
		if(proList == null || proList.size()<1 ){
		 out.print("ProductList is empty.");  
		
		}else{
		for(int i =0; i< proList.size(); i++){
	%>
	 <tr align="center">  
  					<%String select = String.valueOf(i); 
  					%>
  					<td><img alt="Not Found" src="<%=proList.get(i).getImgUrl() %>"> 
  					 <td><a href="Product.jsp?proSelect=<%=select%>" ><font color="black"><%= proList.get(i).getProName() %></font></a></td> 
 					 <td><%= proList.get(i).getPrice() %></td>  
                     <td><%= proList.get(i).getParameter()%></td> 
                     <td><%= proList.get(i).getProInvetory() %></td>
                     <br/>

    
                     
	<%	
	}
	}
	 %> 






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
