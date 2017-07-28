<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>
<body>
<%
try
{
	
	String id =request.getParameter("id");
	
	Class.forName("com.mysql.jdbc.Driver") ;
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
    Statement statement = connection.createStatement() ;
    
    //out.println("query executed");
 
   int i = statement.executeUpdate(" delete from recs where s_no='"+id+"'" ) ; 
      //out.println("query executed");
      //if a row exists
      	
}
catch(Exception e)
{
	e.printStackTrace(); 
}
    	

%>
</body>
</html>