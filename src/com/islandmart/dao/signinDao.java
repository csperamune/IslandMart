package com.islandmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.DB_Connection;
import com.islandmart.signin.signin;

public class signinDao {

    public int registerSignin(signin sigin) throws ClassNotFoundException {
        
    	DB_Connection ob = new DB_Connection();
		Connection connection = ob.get_Connection();
        
        int result = 0;

        try {
        	PreparedStatement preparedStatement = connection.prepareStatement("insert into userdata (usname, fname, lname, email, pass) values (?, ?, ?, ?, ?);");
            preparedStatement.setString(1, sigin.getUserName());
            preparedStatement.setString(2, sigin.getFirstName());
            preparedStatement.setString(3, sigin.getLastName());
            preparedStatement.setString(4, sigin.getEmail());
            preparedStatement.setString(5, sigin.getPassword());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();
        
        } catch (SQLException e) {
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

