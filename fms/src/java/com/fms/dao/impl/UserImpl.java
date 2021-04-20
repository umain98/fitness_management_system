/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class UserImpl {

    private String SelectQuery = "SELECT * FROM users";

    /*
    user_id, user_first_name, user_last_name, user_contact, user_email, user_address,
    user_reg_date, user_date_of_birth, user_height_cm, user_weight_kg, user_status, user_detail, user_password
     */
    public boolean addUser(User user) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into users( user_first_name, user_last_name,"
                + " user_contact, user_email, user_address,\n"
                + "    user_reg_date, user_date_of_birth, user_height_cm, user_weight_kg, user_status,"
                + " user_detail, user_password) values (?,?,?,?,?,?)");
        ps.setString(1, user.getFirstName());
        ps.setString(2, user.getLastName());
        ps.setString(3, user.getContact());
        ps.setString(4, user.getEmail());
        ps.setString(5, user.getAddress());
        ps.setTimestamp(6, user.getUserRegDate());
        ps.setDate(7, user.getDateOfBirth());
        ps.setBigDecimal(8, user.getHeightCm());
        ps.setBigDecimal(9, user.getWeightKg());
        ps.setString(10, user.getStatus());
        ps.setString(11, user.getDetail());
        ps.setString(12, user.getPassword());
         ps.executeUpdate();
        ps.close();
        return true;
    }
}