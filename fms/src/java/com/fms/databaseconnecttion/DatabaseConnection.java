/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.databaseconnecttion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class DatabaseConnection {

    private static Connection con = null;

    public static Connection getDatabaseConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/fms_master_db", "root", "1234");
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
}
