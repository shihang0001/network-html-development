<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>: : shihang design company -ungdproduct : :</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

 


</head>
<body>
<div id="dvmaincontainer">
  <!--main div container starts here-->
  <div id="dvtopcontainer">
    <!-- top container starts here-->
    <div id="dvlogocontainer">
      <!-- logo container starts here-->
	  <h1>The Smart Angel</h1>
	  <h4>Deisned by hang 7.7</h4>
      
      <!-- logo container ends here-->
    </div>
    <div id="dvnavicontainer">
      <!-- navogation div starts here-->
      <img src="images/navi_left.jpg" alt="" />
     <div id="tabs1" >
        <ul>
          <!-- CSS Tabs -->
          <li id="current"><a href="unhome.jsp"><span>Home</span></a></li>
          <li><a href="login.jsp"><span>Log in</span></a></li>
          <li><a href="unDgproduct.jsp"><span>Product </span></a>

          </li>                              
          <li><a href="unproduct.jsp"><span>V-mall</span></a></li>
          <li><a href="uncompany.jsp"><span>About Us</span></a></li>
        </ul>
      </div>
      <img src="images/navi_right.jpg" alt="" />
      <!-- navogation div ends here-->
    </div>
    <!-- top container ends here-->
  </div>
  <div id="dvbodycontainer">
    <!-- body div starts here-->
    <div id="dvbannerbgcontainer">
      <!-- banner bg div starts here-->
      <div id="dvbanner">
        <!-- banner div starts here--><a href="http:www.baidu.com.cn/">here us link</a>
              <!-- banner div ends here-->
      </div>
      <!-- banner bg div ends here--><div id="demo" style="overflow:hidden;width:700px;height:200px;color:#ffffff;">
    <table align="center" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td id="demo1" valign="top">
            <img src="images/banner.jpg" width=360 margin=3>
            <img src="images/s02.jpg" width=360margin=3>
            <img src="images/s03.jpg" width=360 margin=3>
        </td>
        <td id="demo2" valign="top">
        </td>
      </tr>
    </table>
</div>
    <script type="text/javascript">
      var speed=30;
      demo2.innerHTML=demo1.innerHTML;
      demo.scrollLeft=demo.scrollWidth;
      function Marquee(){
          //alert("demo?scrollLeft: "+demo.scrollLeft+" demo2.offsetWidth:  "+demo2.offsetWidth );
          if(demo.scrollLeft<=0){
            demo.scrollLeft+=demo2.offsetWidth;
          }else{
              demo.scrollLeft--;
           }
      }
      var MyMar=setInterval(Marquee,speed);
      demo.onmouseover=function(){
        clearInterval(MyMar);
        }
      demo.onmouseout=function() {
        MyMar=setInterval(Marquee,speed);
      }

      Marquee();
     </script>    </div>

