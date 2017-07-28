<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>



<html>
<head>
<link type="text/css" rel="stylesheet" href="main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<script type="text/javascript" src="home.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<title>LIST</title>
	<script>
	function abc(a){
		r=confirm ("Delete ? ");
		if(r===true)
			{
			var x='delete.jsp?id='+a ;
			window.location.assign(x);
			
			                                                                                                                                                                                      
			}
		else
			return false ;
	}
	</script>
	<link type="text/css" rel="stylesheet" href="list.css "/>
	
</head>
<body>

<header > 
<div class = "row">
<a href="home.html"><img id="logo"class="col-sm-2" src="images/cooltext190260875839452.gif"></a>

<nav class="col-sm-8 text-right">

<p><a href="home.html">HOME </a></p>

</nav>

</div>

</header>

<section>
 <table >
	<thead>
		<tr>
			<th colspan="12" style = "font-size:25px;text-align:center">List of Account holders! </th>
			 
		 </tr>
	</thead>
	<tbody>
		<tr> <b>
			<td>S.NO
			</td>    
			<td>First Name
			</td>  
			<td>Last Name
			</td>
			<td>Email
			</td> 
			<td>Date of Birth
			</td>  
			<td>Contact
			</td>   
			<td>Time Created
			</td> 
			<td>Last Modified
			</td>
			<td>Username
			</td>
			<td>Password
			</td> 
			<td colspan="2">Action <a href="add.html" style="color:#8B4513"><button >ADD!</button> </a>
			</td></b>
		</tr>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
    	Statement statement = connection.createStatement() ;
    
    	//out.println("query executed");
    
   		 ResultSet resultset = statement.executeQuery(" select * from recs " ) ;
   		 int sno;
   		 int i=1;
		while(resultset.next())
		{
			sno = resultset.getInt("s_no");
			%>
			<tr> 
			<td>
			<%=i %>
			</td>
			<td>
			<%=resultset.getString("first") %>
			</td>
			
			<td><%=resultset.getString("last") %>
			</td>
			<td><%=resultset.getString("email") %>
			</td> 
			<td><%=resultset.getString("dob") %>
			</td>  
			<td><%=resultset.getString("contact") %>
			</td>   
			<td><%=resultset.getString("time_created") %>
			</td> 
			<td><%=resultset.getString("last_updated") %>
			</td>
			<td><%=resultset.getString("username") %>
			</td>
			<td><%=resultset.getString("digest") %>
			</td>  
			<td>
			<a href = "edit.jsp?id=<%=sno %>" id="s_no" >Edit</a>
			</td>
			<td>
			<a href = "list.jsp?id=<%=sno %>" id="s_no" onClick="abc(<%=sno%>)">Delete</a>
			</td>   
		</tr>
		
		<%	
		i++; }
		%>
		
		<%
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		
    	
	
	</tbody>
</table>


  
</section>




<footer>
<div class="row">
  <div id="foot"> <small> &copy; 2016 Explorer</small> </div>

</div>
</footer>
</body>
</html>
