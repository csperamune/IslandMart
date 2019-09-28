package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.DB_Connection;
import common.User_Bean;

public class Edit_values {
	
	public User_Bean get_values_of_user(int property_id) {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		User_Bean obj_User_Bean = new User_Bean();
		
		try {
			String query = "select * from property where property_id = ?";
			ps=connection.prepareStatement(query);
			ps.setInt(1, property_id);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				
				/*System.out.println(rs.getString("property_type"));
				System.out.println(rs.getString("city"));
				System.out.println(rs.getString("state"));
				System.out.println(rs.getString("address"));
				System.out.println(rs.getString("property_description"));
				System.out.println(rs.getString("image_name"));*/
				
				
				obj_User_Bean.setProperty_id(rs.getInt("property_id"));
				obj_User_Bean.setProperty_type(rs.getString("property_type"));
				obj_User_Bean.setCity(rs.getString("city"));
				obj_User_Bean.setState(rs.getString("state"));
				obj_User_Bean.setAddress(rs.getString("address"));
				obj_User_Bean.setProperty_description(rs.getString("property_description"));
				obj_User_Bean.setImage_name(rs.getString("image_name"));
				
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return obj_User_Bean;
		
		
		
	}
	
	
	public void edit_user(User_Bean obj_User_Bean ) {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "update Property set property_type=?,city=?, state=?, address=?, property_description=?,image_name=? where property_id = ?";
			ps=connection.prepareStatement(query);
			ps.setString(1, obj_User_Bean.getProperty_type());
			ps.setString(2, obj_User_Bean.getCity());
			ps.setString(3, obj_User_Bean.getState());
			ps.setString(4, obj_User_Bean.getAddress());
			ps.setString(5, obj_User_Bean.getProperty_description());
			ps.setString(6, obj_User_Bean.getImage_name());
			ps.setLong(7, obj_User_Bean.getProperty_id());
			
			ps.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
	}
	
	
}
