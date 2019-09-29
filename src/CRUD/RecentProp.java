package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.User_Bean;

public class RecentProp {
	
	public static void main(String[] args) {
		ReadValues obj_read = new ReadValues();
		obj_read.get_values();
	}


	public List<User_Bean> get_values() {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<User_Bean> list = new ArrayList<User_Bean>();
		
		
		try {
			String query = "SELECT DISTINCT * FROM property a WHERE 3 >= (SELECT COUNT(DISTINCT property_id)  FROM property b WHERE b.property_id >= a.property_id) ORDER BY a.property_id DESC;";
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				User_Bean obj_User_Bean = new User_Bean();
				obj_User_Bean.setProperty_id(rs.getInt("property_id"));
				obj_User_Bean.setProperty_type(rs.getString("property_type"));
				obj_User_Bean.setCity(rs.getString("city"));
				obj_User_Bean.setState(rs.getString("state"));
				obj_User_Bean.setAddress(rs.getString("address"));
				obj_User_Bean.setProperty_description(rs.getString("property_description"));
				obj_User_Bean.setImage_name(rs.getString("image_name"));
				
				list.add(obj_User_Bean);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
		
		
		
	}
	
}
