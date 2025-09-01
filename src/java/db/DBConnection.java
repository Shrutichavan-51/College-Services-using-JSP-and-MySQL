/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;

/**
 *
 * @author swapn
 */
public class DBConnection {
    
    // Method to establish the connection to the database
    public static Connection getConnection() {
        Connection con = null;
        try {
            // Loading the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection to the database
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/userdb", "root", "5151"
            );
        } catch (Exception e) {
            e.printStackTrace(); // Print any exceptions that occur
        }
        return con; // Return the connection object
    }
}

    