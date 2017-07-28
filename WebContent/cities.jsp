
<html>
<head>
<link type="text/css" rel="stylesheet" href="main.css"/>
<link type="text/css" rel="stylesheet" href="cities.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
<script type="text/javascript" src="cities.js"></script>

</head>
<body>

<header > 
<div class = "row">
<a href="home.html"><img id="logo"class="col-sm-2" src="images/cooltext190260875839452.gif"></a>

<nav class="col-sm-8 text-right">

<p><a href="home.html">HOME </a></p>
<p id="cities">CITIES+</p>
<form method="POST" action="search.jsp">
<input type="text" name="city" placeholder="Search City" required>
<input type="submit" value ="Go!"> 
<nav>
  <ul>
    <li><a href="#c1">Riyadh</a></li>
    <li><a href="#c2">Jizan</a></li>
    <li><a href="#c3">Makkah</a></li>
    <li><a href="#c4">Madinah</a></li>
    <li><a href="#c5">Jeddah</a></li>
  </ul>
</nav>
</form>

<p><strong>HELLO <%=session.getAttribute("key")%><a style="text-decoration:underlined;margin-left:20px" href="logout.jsp" >Logout?</a></strong></p>

</nav>

</div>

</header>

<section>
 	<div id="c1">
 		<h3 style="color:white;position:absolute">Riyadh</h3>
 		<p style="color:black ;float:right;font-size:20px;margin:50px" class=" col-xs-4" >Riyadh is the capital and largest city of the Kingdom of Saudi Arabia. It is also the capital of Riyadh Province, and belongs to the historical regions of Najd and Al-Yamama. It is situated in the center of the Arabian Peninsula on a large plateau, and is home to 7.3 million people, and the urban centre of a region with a population of close to 9 million people.<button><a href="riyadh.html">Explore!</a></button></p>
 		
 	</div>
 	
 	<div id="c2">
 	
 		<p style="color:black ;float:right;font-size:19px;margin:30px" class=" col-xs-4" >Jizan is a port city and the capital of Jizan Region, which lies in the southwest corner of Saudi Arabia and directly north of the border with Yemen. Jazan City is situated on the coast of the Red Sea and serves a large agricultural heartland that has a population of 1.5 million, according to a 2010 census. The area is noted for its high-quality production of tropical fruits like mango, figs, and papaya.
Jazan has one of the largest mega projects market in the kingdom with significant infrastructure projects worth many billions of dollars.<button><a href="jizan.html">Explore!</a></button></p>
 	
 	</div>
 		
 	<div id="c3">
 	<h3 style="color:white;position:absolute">Makkah</h3>
 		<p style="color:black ;float:right;font-size:20px;margin:30px" class=" col-xs-4" >Makkah is a city holy to Muslims where the Holy Mosque and the Kaaba, which is the Muslims attraction center in their prayers. It is located in Hijaz in Saudi Arabia, and some 400 km away from Medina, in the direction south-west, about 120 km from the city of Taif in the east direction 72 km from the city of Jeddah and the Red Sea coast. The nearest port to Makkah is Jeddah Islamic Port. The nearest international airport is King Abdul Aziz International Airport.
 	<button><a href="makkah.html">Explore!</a></button></p></div>
	
	<div id="c4">
 	
 		<p style="color:black ;float:right;font-size:20px;margin:30px" class=" col-xs-4" >Al Medina Al Munawarah, nicknamed the "Taybah Al Tayyeba" which means "goodness of the good", the first Islamic capital and the second holiest place for Muslims after Makkah, is the capital of Madina region located on the land of the historic Hijaz. About 400 kilometers away from Makkah in a east northeast direction. About 150 km east of the Red Sea. The nearest port is the port of Yanbu, south west of it, just about 220 km. Total space area of Medina is about 589 km ². 
 		<button><a href="madinah.html">Explore!</a></button></p></div>
	
	<div id="c5">
 		<h3 style="color:white;position:absolute">Jeddah</h3>
 		<p style="color:black ;float:right;font-size:20px;margin:30px" class=" col-xs-4" >Jeddah, a Saudi Arabia is city located in the middle of the eastern Red Sea coast. It is nicknamed by the Bride of the Red Sea. Jeddah is the economic tourism capital of the Kingdom of Saudi Arabia. Its population is about 3.2 million. Considered the second largest city in Saudi Arabia after Riyadh.<br><button><a href="jeddah.html">Explore!</a></button></p></div>
	
  
</section>




<footer >
<div class="row">
  <div id="foot"> <small> &copy; 2016 Explorer</small> </div>

</div>
</footer>
</body>
</html>