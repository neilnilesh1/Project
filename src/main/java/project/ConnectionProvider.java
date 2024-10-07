package project;
import java.sql.*;
public class ConnectionProvider {
public static Connection getCon()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.print("connection established");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","ansh");
		System.out.print("connection established");
		return con;
	}
	 catch (ClassNotFoundException e) {
	        System.out.println("Driver not found: " + e.getMessage());
	        return null;
	      
	    } catch (SQLException e) {
	        System.out.println("Connection failed: " + e.getMessage());
	        return null;
		}
	
}
}
