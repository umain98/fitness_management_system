/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.ReservationImpl;
import com.fms.entity.Reservation;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class ReservationController {
    
     /*
    reservation_type, reservation_date, reservation_time,
    reservation_user_id, reservation_user_name, reservation_status, reservation_detail
    */
    
    public static boolean addReservation(String reservType, Timestamp reservDate, Time reservTime,
            int reservUserId, String reservUserName, String status, String detail) throws SQLException{
        Reservation reservation = new Reservation();
        reservation.setReservType(reservType);
        reservation.setReservDate(reservDate);
        reservation.setReservTime(reservTime);
        reservation.setReservUserId(reservUserId);
        reservation.setReservUserName(reservUserName);
        reservation.setStatus(status);
        reservation.setDetail(detail);
        return new ReservationImpl().addReservation(reservation);
    }
}
