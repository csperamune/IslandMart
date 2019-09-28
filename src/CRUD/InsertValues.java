package CRUD;


import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

public class InsertValues{
	
	public void InsertValues(String property_type, String city, String state, String address, String property_description, String image_name) {
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		
		//making the prepare statement
		PreparedStatement ps = null;
		
		try {
		String query="insert into property(property_type, city, state, address, property_description, image_name) values(?,?,?,?,?,?)";
		ps=connection.prepareStatement(query);
		ps.setString(1, property_type);
		ps.setString(2, city);
		ps.setString(3, state);
		ps.setString(4, address);
		ps.setString(5, property_description);
		ps.setString(6, image_name);
		
		ps.executeUpdate();
		
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
		}
	}

}
