package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DB_Connection;

public class LoginDao {
    public static boolean validate(String username, String pass) {        
        boolean status = false;
        PreparedStatement pst = null;
        ResultSet rs = null;

        DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
		
        try {
            pst = connection.prepareStatement("select * from userdata where usname=? and pass=?");
			pst.setString(1, username);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (connection != null) {
                try {
                	connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
}
