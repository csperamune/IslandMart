package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.User_Bean;

public class Propertydao{
	
	public User_Bean getPropertyData(int property_id, String city) {
	
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		

		List<User_Bean> list = new ArrayList<User_Bean>();
		User_Bean property = new User_Bean();
		
		try {
			String query = "select * from property where property_id = ? and city = ?";
			ps=connection.prepareStatement(query);
			ps.setInt(1, property_id);
			ps.setString(2, city);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				property.setProperty_type(rs.getString("property_type"));
				property.setCity(rs.getString("city"));
				property.setState(rs.getString("state"));
				property.setAddress(rs.getString("address"));
				property.setProperty_description(rs.getString("property_description"));
				
				list.add(property);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	
		return property;
	}
}
