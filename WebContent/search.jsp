<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<!DOCTYPE html >
<html>
<head>
	<title>Search</title>
	<link type="text/css" rel="stylesheet" href="main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<script type="text/javascript" src="home.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<style>
	td:first-letter{
		color:red;
		text-transform: uppercase;
	}
</style>
</head>
</head>
<body >
<header > 
<div class = "row">
<a href="home.html"><img id="logo"class="col-sm-2" src="images/cooltext190260875839452.gif"></a>

<nav class="col-sm-8 text-right">

<p><a href="home.html">HOME </a></p>
</nav>

</div>

</header>

<section>
 <h2 style="
  	margin: 30px;">Search Results! </h2> 
 <table  >
	
			
		
	<tbody>
		
<%
String city= request.getParameter("city") ;

	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
    	Statement statement = connection.createStatement() ;
    
    	//out.println("query executed");
    
   		 ResultSet resultset = statement.executeQuery(" select * from cities where city='"+city+"'") ;
   		
   		
		while(resultset.next())
		{
			
			%>
			
			<tr style="
	display:inline-block;
	 padding: 10px;
  	margin: 30px;
  	height: 160px;
  	 width:1000px;
  	border:1px solid black;
	-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
-webkit-box-shadow: 4px 4px 16px #8B4513;
-moz-box-shadow: 4px 4px 16px #8B4513;
box-shadow: 4px 4px 16px #8B4513;
"> 
			
			<td>
			<img src="<%=resultset.getString("img") %>" style="height=:250px;width:250px" >
			</td>
			
			<td style="font-size:35px"><%=resultset.getString("city") %>
			</td>
			 
			<td>
			<button><a href ="<%=resultset.getString("links") %>">Explore?</a></button>
			
			</td>
			
			
		</tr>
		
		
		<%	
		}%>
		</tbody>
		</table>
		<br>
		<br>
		<%
		out.println("No more results found!");
		
					
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		
    	
	
  
</section>




<footer>
<div class="row">
  <div id="foot"> <small> &copy; 2016 Explorer</small> </div>

</div>
</footer>


</body>
</html>
