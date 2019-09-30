package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import common.DB_Connection;

public class deleteUser {
	public void deleteus(String name) {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "delete from userdata where usname = ?";
			ps=connection.prepareStatement(query);
			ps.setString(1, name);
			ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
			
	}
}