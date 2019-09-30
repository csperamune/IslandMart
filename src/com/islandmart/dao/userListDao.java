package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import com.islandmart.signin.signin;

public class userListDao {
	public static void main(String[] args) {
		userListDao user01 = new userListDao();
		user01.get_values();
	}


	public List<signin> get_values() {
		//DB Connection
		DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<signin> list = new ArrayList<signin>();
		
		
		try {
			String query = "select * from userdata";
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				signin userList = new signin();
				
				userList.setUserName(rs.getString("usname"));
				userList.setFirstName(rs.getString("fname"));
				userList.setLastName(rs.getString("lname"));
				userList.setEmail(rs.getString("email"));
				
				list.add(userList);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
		
		
		
	}
	
}