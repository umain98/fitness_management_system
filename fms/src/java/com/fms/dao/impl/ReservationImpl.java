/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ReservationImpl {

    private String SelectQuery = "SELECT * FROM reservations";

    /*
    reservation_id, reservation_type, reservation_date, reservation_time,
    reservation_user_id, reservation_user_name, reservation_status, reservation_detail*/
    
    public boolean addReservation(Reservation reservation) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into reservations(reservation_type,"
                + " reservation_date, reservation_time,\n"
                + "    reservation_user_id, reservation_user_name, reservation_status,"
                + " reservation_detail) values (?,?,?,?,?,?,?)");
        ps.setString(1, reservation.getReservType());
        ps.setTimestamp(2, reservation.getReservDate());
        ps.setTime(3, reservation.getReservTime());
        ps.setInt(4, reservation.getReservUserId());
        ps.setString(5, reservation.getReservUserName());
        ps.setString(6, reservation.getStatus());
        ps.setString(7, reservation.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
