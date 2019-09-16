package signin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import signin.signin;

public class signinDao {

    public int registerSignin(signin sigin) throws ClassNotFoundException {
        
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "tastdb";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "1234";
        
        int result = 0;
        
        //Class.forName(driver);

        try {
        	Class.forName(driver);
        	Connection connection = DriverManager
                    .getConnection(url + dbName, userName, password);

        	PreparedStatement preparedStatement = connection
                    .prepareStatement("INSERT INTO userdata (fname, lname, email, pass) VALUES (?, ?, ?, ?);");
            preparedStatement.setString(1, sigin.getFirstName());
            preparedStatement.setString(2, sigin.getLastName());
            preparedStatement.setString(3, sigin.getEmail());
            preparedStatement.setString(4, sigin.getPassword());

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

