package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	
	public static void main(String []args) {
		DB_Connection obj = new DB_Connection();
		System.out.println(obj.get_Connection());
	}
	
	public Connection get_Connection() {  
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/islandmart","root","1234");
		}
		catch(Exception e) {
			  System.out.println(e);
		}
		return connection;
		
	}
}
