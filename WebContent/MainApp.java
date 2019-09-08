package login.sumit.registration;
import java.sql.*;

public class MainApp {
	
	public static void main (String args[]) {
		String url ="jdbc:mysql://localhost:3306/";
		String user = "root";
		String password = "";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			
			Statement stt = con.createStatement();
			
			//create and select DB
			stt.execute("create database if not exists testdb");
			stt.execute("use testdb");
			
			//create table
			stt.execute("drop table if exists people");
			stt.execute("create table people("+
					"id int not null auto_increment,"
					+ "fname varchar(22),"
					+ "lname varchar(22),"
					+ "primary key(id)"
					+")");
			//add values
			stt.execute("insert into people(fname, lname) values"+
			"('Chamith', 'Peramune'),('Dinushi', 'Peramune'),('Sajith', 'Peramune')");
			
			//select table
			ResultSet res = stt.executeQuery("select * from people where fname = 'Dinushi'");
			
			while(res.next()) {
				System.out.println(res.getString("fname") + "" + res.getString("lname"));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
