<%@ page import="java.sql.*" %>

<%= Class.forName("com.mysql.jdbc.Driver") %>
<html>
<body>
        <% 
           try
        {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "Root123");
            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery(" select * from info") ; 
        }
        catch(Exception e)
        {
        	e.printStackTrace(); 
        }
        out.println("entry successfull");
        %>

</body>
</html>