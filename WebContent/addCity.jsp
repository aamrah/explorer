
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
String city= request.getParameter("city").toLowerCase();
String alink =request.getParameter("alink") ;
String img= request.getParameter("img") ;


	try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
	
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siblings", "root", "Root123");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		ResultSet resultset = statement.executeQuery(" select * from cities where city='"+city+"'" ) ;  
		if(resultset.next())
		{ 
			%>
			<script type="text/javascript">
			var x=confirm("City already exists!Add another?");
			if(x===true){
				window.location.href="home.html";
			}
		
			</script>
			<%
		}
		else
		{
			//out.println("1123") ;
			int i=statement.executeUpdate("insert into cities (city,links,img)" + "values('"+city+"' , '"+alink+"'  ,'"+img+"' )"); //first,last,date,email,contact,username,password
			//out.println("1123") ;
			%>
			<script type="text/javascript">
				alert("City Added!");
				window.location.href="addCity.html";
			</script>
			<%
		} 
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>

</body>
</html>
</html>





