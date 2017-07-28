import java.sql.DriverManager;
import java.sql.Statement ;
class demo
{
	public static void main(String[] args)
	{
	Connection con = null;
	Statement sentencia = null;
	try {
      con = DriverManager.getConnection("jdbc:sqlite:db/Freepark.sqlite");
      sentencia = con.createStatement();
	} catch (SQLException e) {
      // TODO Auto-generated catch block
      System.out.println("error al buscar la base de datos");
	} catch (Exception ex){

     //handle it
 }
	}
}