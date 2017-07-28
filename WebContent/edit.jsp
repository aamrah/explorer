<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>
<head>
<link type="text/css" rel="stylesheet" href="main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<script type="text/javascript" src="home.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<style>
*{
	color:white;
}

</style></head>
<body style="background-image: -moz-linear-gradient(top, #8B4513, #000000);
background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0.00, #8B4513), color-stop(1.0, #000000));
border: 3px solid #FFFFFF;
background-color: #FFF8DC;">

<header > 
<div class = "row">
<a href="home.html"><img id="logo"class="col-sm-2" src="images/cooltext190260875839452.gif"></a>

<nav class="col-sm-8 text-right">

<p><a href="home.html">HOME </a></p>

</nav>

</div>

</header>

<section>



<% 
Class.forName("com.mysql.jdbc.Driver") ;
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
Statement statement = connection.createStatement() ;
 String id =  request.getParameter("id");
 ResultSet resultset = statement.executeQuery(" select * from recs where s_no='"+id+"'" ) ; 
 if(resultset.next())
 {	 

%>
<table>
<tr> <h2>EDIT.  </h2> <br><br> </tr>
<form action= "reg.jsp" method="POST" >
<tr><td><b>
   First Name  </b> </td><td>:</td> 
  <td><input type = "text" style="color:black;" name ="firstname" autofocus value=<%=resultset.getString("first")%>><br><br></td>
  </tr>
<tr>
<td><b>Last Name </b> </td><td>:</td> 
  <td><input type = "text" style="color:black;"name= "lastname" value=<%=resultset.getString("last")%>> <br/><br/></td></tr>
  <tr>
     <td><b>Email </b> </td><td>:</td> 
    <td><input type = "email" style="color:black;"name ="email" value=<%=resultset.getString("email")%> placeholder= "Enter a valid email address"><br/><br/></td> </tr>
  <tr> 
    <td><b>
Date of Birth</b>  </td><td>:</td> 
    <td><input type="date" style="color:black;" name="date" id="date"  value=<%=resultset.getString("dob")%>/><br/><br/> 
    </td></tr>
 
<tr><td><b>
 Contact </b></td><td>:</td> 
  <td><input type = "tel" style="color:black;"name ="contact" value=<%=resultset.getString("contact")%>><br/><br/></td> </tr>
  <tr>
    <td><b> Username </b></td><td>:</td> 
    <td><output  name ="username" style="color:white"> <%=resultset.getString("username")%></output><br/><br/></td> </tr>
<tr>
  <td> <b>Password</b> </td><td>:</td> 
  <td><input type = "password" style="color:black;" name= "password" placeholder="New Password?"><br/><br/></td> </tr>
<tr><td><br/> <input type = "submit"style="color:black;" > </td></tr>
  
</table>


<%
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