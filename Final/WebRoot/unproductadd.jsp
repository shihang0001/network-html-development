<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
import="jspservlet.dao.ProductDAO" import="jspservlet.dao.impl.ProductDAOImpl"
import="jspservlet.vo.Product"%>
 
<html> 
	<head>
<title>: : shihang design company unproduct adding : :</title>
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
        
        <img src="images/lamp1.png" width="761" height="218"  alt=""/>        <!-- banner div ends here-->
      </div>
      <!-- banner bg div ends here-->
    </div>
    <div id="dvleftpanel">
      <!-- left pannel div starts here-->
      <div id="topimage">
        <!-- top left div starts here-->
       ABOUT DESIGNER 
        <!--<img src="images/client.jpg" alt="Client Testimonials" width="274" height="34" title="Client Testimonials" /> -->
        <!-- top left div end here-->
      </div>
      <div id="midcont">
        <!-- left body div starts here-->
        <div class="design" id="tabs">????  class "design" id "tabs" ???</div>
        <p><img src="images/sh04.jpg" width="231" height="151"  alt=""/></p>
        <p>&quot;I guess the best designer of webset or the client is always considering the details and the connection between the people and the product. I also think this is the closest time beween dessign and me."</p>
        <p><span>- Bruse Hang shihang</span></p>
        <!-- left body div ends here-->
       </div>
      <div id="leftfoot"><span>CONTACT US</span>
        <p>E-mail: <a href="2013213341@bupt.edu.cn"?subject=Hello%20I need more detail!>shihang 2013213341@bupt.com </a></p>
        <p>Phone:  13121908652 </p>
      
      </div>
            </div>
    <div id="dvrightpanel">
 <div class="rightX">
		
        
        <div class="rTitle">
		<h3> Product choose list </h3>
       <h4>You have choose your things ! </h4>
       <h4> Now you can choose your number to adding~</h4>

    <%float height = (Float)session.getAttribute("lookHeight");
    String color = (String)session.getAttribute("lookColor");
    float price = (Float)session.getAttribute("lookPrice");
    String detail = (String)session.getAttribute("lookDetail");
    String address = (String)session.getAttribute("lookAddress"); %>
    
    <form method="post" action="./add">
    picture <%= detail %>
    height <%= height %><br/>
    color <%= color %>      price <%= price%><br/>
    amount : <input type="text" name="amount"/><br/>
    <input type="SUBMIT" name="submit" value="Add">
    </form>
		
		</div>
		<div class="rContent">
			<div class="productX">
			<h5>Here you can see more ~</h5>
				<img src="./images/l02.jpg" height="195"/>				
              <label><input name="Fruit" type="checkbox" value="" />
                Choose This  $ 20.99 </label>
				<p>The violin is a stringed instrument.There are four strings.Rely on string and bow friction sound.It is widely spread in all countries, is the modern orchestra string in the group's main musical instrument.It occupies very important position in the instrumental music, is a mainstay of the modern symphony orchestra, the solo instrument is hard to play skills.</p>
		  </div>
		<div class="productX">
				<img src="./images/l01.jpg" height="195">
              <label><input name="Fruit" type="checkbox" value="" />
                Choose This  $ 17.99</label>               
				<p>Tongue, English called kit or Drum set, Drum set many percussion instruments as a whole, the combination of the basic including the big Drum/Drum (Bass Drum), Snare (c2-style Drum), Drum (Tom Tom), Drum / (Floor Tom).Cymbal part including the hi-hat/hi-hat - (Hi Hat Cymbal), stress tablets/tablets (Crash Cymbal), rhythm tablets/ding-ding tablets (Ride Cymbal).To sound need to also can join Chinese cymbals (China), water tablets (Splash), clock tablets (Bell).</p>
		  </div>
			<div class="productX">
				<img src="./images/l04.jpg" height="195">
              <label><input name="Fruit" type="checkbox" value="" />
                Choose This  $ 17.99</label>               
				<p>Tongue, English called kit or Drum set, Drum set many percussion instruments as a whole, the combination of the basic including the big Drum/Drum (Bass Drum), Snare (c2-style Drum), Drum (Tom Tom), Drum / (Floor Tom).Cymbal part including the hi-hat/hi-hat - (Hi Hat Cymbal), stress tablets/tablets (Crash Cymbal), rhythm tablets/ding-ding tablets (Ride Cymbal).To sound need to also can join Chinese cymbals (China), water tablets (Splash), clock tablets (Bell).</p>
		  </div>
			<div class="productX">
				<img src="./images/l05.jpg" height="210">
              <label><input name="Fruit" type="checkbox" value="" />Choose This $ 23.99 </label>
			<p>The piano is a keyboard instrument of originated from the western classical music, with 88 keys (by 52 strings, 36 black keys) and metal string of soundboard.Range is wide, from A2 (27.5 Hz) to c5 (4186 Hz), including almost all the sound of music system.Widely used in solo, repetition and accompaniment performance, composition and rehearse music is very convenient.</p>
		  </div>
			<div class="productX">
				<img src="./images/l03.jpg" height="194">
              <label><input name="Fruit" type="checkbox" value="" />
                Choose This $ 33.99</label>
		<p>Guitar, and for the Guitar or Guitar.Belongs to the plucked instruments, usually six strings, shape similar to fiddle.The guitar in the pop music, rock music, blues, folk songs, Buddha lang Ming, is often seen as the main instrument.In the field of classical music, the guitar often performed in solo or duet type;Of course, in the chamber music and orchestral music, the guitar also plays a considerable role of foil.</p>
		  </div>
		  <div class="productX">
				<img src="./images/l08.jpg" height="200">
            <label><input name="Fruit" type="checkbox" value="" />
              Choose This $ 78.99</label>
	<p>Harmonica, blow with the mouth or inhale, make sound by metal reed reed instruments more;On the instrument classification belongs to the free spring wind instruments.Because of the sound source is between 1.5 ~ 1.5 cm length rather than the reeds on the column of air (such as the flute), mainly divides into the solo and ensemble harmonica harmonica, each have different types.The range depending on the species, is slightly different with tonal.Due to play the way to adjust the same relative position on the harmonica reeds, single the harmonica playing chrous ability is limited.</p>
	<p> <a href="#">  <img src="images/sp01.jpg" width="66" height="64"  alt=""/>CLICK HERE ! Be sure to add into the v-mall! </a></p>
	<p><span class="design"><a href="#"><img src="images/studio.jpg" alt="Studio7designs" border="0" title="Studio7designs" /></a></span></p>
		  </div>
		</div>
	</div>
</div>

 
 
 
 
 
      <div class="line"><img src="images/h_line.jpg" alt="" width="535	" height="1" title="" /></div>
     
     
  </div>
      <!-- right panel div ends here-->
</div>
    <!-- body div ends here-->
  </div>
  <div id="dvfootercontainer">
    <!-- footer div starts here-->
   <p>&nbsp;</p>
     <div class="design"></div>
    <!-- footer div ends here-->
  </div>
  <!--main div container ends here-->
</div>
</body>	
	
	
	
	
	
	
	
	
</html>
