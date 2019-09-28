package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import common.DB_Connection;

public class Delete_values {
	public void delete_value(int property_id) {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "delete from property where property_id = ?";
			ps=connection.prepareStatement(query);
			ps.setInt(1, property_id);
			ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
			
	}
}
