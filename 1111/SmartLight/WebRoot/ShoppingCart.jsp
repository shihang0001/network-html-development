<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="SmartLight.vo.Product"%>
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
    
    <title>My JSP 'ShoppingCart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

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
    
    if(session.getAttribute("login") == null){
    %>
    <script>
	window.location.href="Error.jsp";
	</script>
    
    <% 
    }else{

    ArrayList<Product> proList = (ArrayList<Product>)session.getAttribute("list");
  	int totalPro = 0;	
  	for(int i =0;i<proList.size();i++){
  	if(proList.get(i).getProBuy() =="1"){
  	 int price = Integer.parseInt(proList.get(i).getPrice()); 
  	 int quantity = Integer.parseInt((String)proList.get(i).getProNum());
  	 int total = price * quantity;
  	 String result = " Type:      "+proList.get(i).getProName()+"   Quantity:   "+proList.get(i).getProNum()+ "    Price:    "+total; 
  	 String selectPro = String.valueOf(i); 	 
  	 %>
  	 <%=result %>
  	 

  	 
	<form method="post" action="./ShoppingCart"> 
		
		<input type="hidden" name="proDelete" value="<%=selectPro%>"/>
		<input type="submit" name="delete" value="Delete">
	</form>
	
		<br/>
  	 <%
  	totalPro = totalPro+total; 	 
  	}
  	}
  	request.getSession().setAttribute("totalPro",totalPro);
%>      
	<br />
	<%="Total:  "+totalPro%><br>
	
	
	<%//request.getSession().getAttribute("totalPr").toString() %>
	
	<form method="post" action="./ShoppingCart"> 
		<input type="submit" name="pay" value="Pay now!">
	</form>
	
	
	<% }%>
	
	<a href="ProductList.jsp">Back to Product List</a>
					
					
					
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
