
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>

<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<%--@ page import ="java.sql.ResultSet.*" --%>
<%--@ page import ="javax.servlet.http.HttpServlet.*" --%>
<%--@ page import ="javax.servlet.http.HttpServletRequest.*" --%>
<%--@ page import ="javax.servlet.http.HttpServletResponse.*" --%>
<%--= Class.forName("com.mysql.jdbc.Driver") --%>
<html>	
<body>

<%
String firstname = request.getParameter("firstname");
String lastname =request.getParameter("lastname") ;
String date= request.getParameter("date") ;
//String month= request.getParameter("month") ;
//String year= request.getParameter("year") ;
String email= request.getParameter("email") ;
String contact= request.getParameter("contact");
String username =request.getParameter("username");
String salt = "il!ke#0me$$w!#h#hec0de$!" ;
String password=request.getParameter("password");

//out.print( DigestUtils.md5Hex( password ) );
 String digest = DigestUtils.md5Hex( password + salt ) ;//Calculates the MD5 digest and returns the value as a 32 character hex string.
 //out.print( digest+"<br>" );
	try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
	
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		out.println("1123") ;
		int i=statement.executeUpdate("update recs set first='"+firstname+"'last='"+lastname+"'dob='"+date+"'email='"+ email+"'contact= '"+contact+"'username='"+username+"' digest='"+ digest+"' where username='"+username+"'"); //first,last,date,email,contact,username,password //out.println("1123") ; 
		out.println("1123") ;
			%>
			<script>
			window.loacation.href="list.jsp";
			</script>
			<%	
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





