/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ReservationImpl {

    private String selectQuery = "SELECT * FROM reservations";

    /*
    reservation_id, reservation_type, reservation_date, reservation_time,
    reservation_user_id, reservation_user_name, reservation_status, reservation_detail*/
    public boolean addReservation(Reservation reservation) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into reservations(reservation_type,"
                + " reservation_date, reservation_time, reservation_user_id, "
                + " reservation_user_name, reservation_status, reservation_detail)"
                + " values (?,?,?,?,?,?,?)");

        ps.setString(1, reservation.getReservType());
        ps.setString(2, reservation.getReservDate());
        ps.setString(3, reservation.getReservTime());
        ps.setInt(4, reservation.getReservUserId());
        ps.setString(5, reservation.getReservUserName());
        ps.setString(6, reservation.getStatus());
        ps.setString(7, reservation.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllReservationRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteReservationById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from reservations where reservation_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateReservationById(Reservation reservation) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update reservations set reservation_type=?, "
                + " reservation_date=?, reservation_time=?, reservation_user_id=?, reservation_user_name=?,"
                + " reservation_status=?, reservation_detail=? where reservation_id=? ");
        ps.setString(1, reservation.getReservType());
        ps.setString(2, reservation.getReservDate());
        ps.setString(3, reservation.getReservTime());
        ps.setInt(4, reservation.getReservUserId());
        ps.setString(5, reservation.getReservUserName());
        ps.setString(6, reservation.getStatus());
        ps.setString(7, reservation.getDetail());
        ps.setInt(8, reservation.getReservId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
