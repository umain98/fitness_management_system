/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.UserImpl;
import com.fms.entity.User;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class UserController {

    /*
    user_first_name, user_last_name, user_contact, user_email, user_address,
    user_reg_date, user_date_of_birth, user_height_cm, user_weight_kg, user_status, user_detail, user_password
     */
    public static boolean addUser(String firstName, String lastName, String contact, String email, String address,
            Timestamp registerDate, Date dateOfBirth, BigDecimal heightCm, BigDecimal weightKg, String status, String detail,
            String password) throws SQLException {
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setContact(contact);
        user.setEmail(email);
        user.setAddress(address);
        user.setUserRegDate(registerDate);
        user.setDateOfBirth(dateOfBirth);
        user.setHeightCm(heightCm);
        user.setWeightKg(weightKg);
        user.setStatus(status);
        user.setDetail(detail);
        user.setPassword(password);
        return new UserImpl().addUser(user);
    }

    public static boolean updateUser(int userId, String firstName, String lastName, String contact, String email, String address,
            Timestamp registerDate, Date dateOfBirth, BigDecimal heightCm, BigDecimal weightKg, String status, String detail,
            String password) throws SQLException {
        User user = new User();
        user.setUserId(userId);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setContact(contact);
        user.setEmail(email);
        user.setAddress(address);
        user.setUserRegDate(registerDate);
        user.setDateOfBirth(dateOfBirth);
        user.setHeightCm(heightCm);
        user.setWeightKg(weightKg);
        user.setStatus(status);
        user.setDetail(detail);
        user.setPassword(password);
        return new UserImpl().updateUserById(user);

    }

    public static boolean deleteUserById(int userId) throws SQLException {
        return new UserImpl().deleteUserById(userId);
    }

    public static ResultSet getAllUserRecords() throws SQLException {
        return new UserImpl().getAllUserRecords();
    }
}
