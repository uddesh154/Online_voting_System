package app;
import java.sql.*;

public class Demo 

{
	
	public static void main(String args[])
	{
		try 
		{
		Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/database","postgres","uddesh");
		System.out.println("Connected!");
		Statement stmt=con.createStatement();
		stmt.executeUpdate("create table abc(name varchar(20))");
		System.out.println("Table Created");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
