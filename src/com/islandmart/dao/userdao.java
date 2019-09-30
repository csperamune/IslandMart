package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import com.islandmart.signin.signin;

public class userdao {
	
	public signin getUserData(String userName) {
		
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		signin user = new signin();
		
		try {
			String query = "select * from userdata where usname = ?";
			ps=connection.prepareStatement(query);
			ps.setString(1, userName);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				
				user.setUserName(rs.getString("usname"));
				user.setFirstName(rs.getString("fname"));
				user.setLastName(rs.getString("lname"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("pass"));
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	
		return user;
	}

}
