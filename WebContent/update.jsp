<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>

<html>
<body>
<%
String id =  request.getParameter("id");
String firstname = request.getParameter("firstname");
String lastname =request.getParameter("lastname") ;
String date= request.getParameter("date") ;
String email= request.getParameter("email") ;
String contact= request.getParameter("contact");
String username =request.getParameter("username");
String salt = "il!ke#0me$$w!#h#hec0de$!" ;
String password=request.getParameter("password");
String digest = DigestUtils.md5Hex( password + salt ) ;//Calculates the MD5 digest and returns the value as a 32 character hex string.
 
try
{
	
	Class.forName("com.mysql.jdbc.Driver") ;
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
    Statement statement = connection.createStatement() ;
    
   // out.println("query executed");
     int i = statement.executeUpdate("update recs set first='"+firstname+"', last='"+lastname+"', dob='"+date+"', email='"+email+"', contact='"+contact+"', username='"+username+"', digest='"+digest+"' where s_no='"+id+"'"); 
   // out.println("query executed");
      //if a row exists
      

}
catch(Exception e)
{
	e.printStackTrace(); 
}

%>
</body>
</html>