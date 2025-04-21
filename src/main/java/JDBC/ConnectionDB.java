package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {
    public static Connection getConnection(){
        Connection conexion= null;
        var db = "gym_db";          //Schema name
        var url = "jdbc:mysql://localhost:3306/"+db;

        var user = "root";              //Update user
        var password = "password";      //Update password 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url,user,password);

        } catch (Exception e) {
            System.out.println("ERROR: "+e.getMessage());
        }
        return conexion;
    }
}
