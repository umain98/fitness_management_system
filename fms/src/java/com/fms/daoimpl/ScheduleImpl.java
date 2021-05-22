/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Schedule;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ScheduleImpl {

    private String selectQuery = "SELECT * FROM schedules";

    /*
    schedule_id, schedule_created_by_id, schedule_created_by_name, schedule_start_date,
    schedule_end_date, schedule_days_per_week, schedule_for, schedule_special_note, schedule_status, schedule_detail
     */
    public boolean addSchedule(Schedule schedule) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into schedules(schedule_created_by_id, "
                + "schedule_created_by_name, schedule_start_date, schedule_end_date, "
                + "schedule_days_per_week, schedule_for, schedule_special_note, schedule_status, "
                + "schedule_detail) values (?,?,?,?,?,?,?,?,?)");
        ps.setInt(1, schedule.getCreatedById());
        ps.setString(2, schedule.getCreatedByName());
        ps.setString(3, schedule.getStartDate());
        ps.setString(4, schedule.getEndDate());
        ps.setInt(5, schedule.getDaysPerWeek());
        ps.setString(6, schedule.getScheduleFor());
        ps.setString(7, schedule.getSpecialNote());
        ps.setString(8, schedule.getStatus());
        ps.setString(9, schedule.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllScheduleRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteScheduleById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from schedules where schedule_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateScheduleById(Schedule schedule) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update schedules set schedule_created_by_id=?,"
                + " schedule_created_by_name=?, schedule_start_date=?,schedule_end_date=?, schedule_days_per_week=?, "
                + "schedule_for=?, schedule_special_note=?, schedule_status=?, schedule_detail=? where schedule_id=? ");
        ps.setInt(1, schedule.getCreatedById());
        ps.setString(2, schedule.getCreatedByName());
        ps.setString(3, schedule.getStartDate());
        ps.setString(4, schedule.getEndDate());
        ps.setInt(5, schedule.getDaysPerWeek());
        ps.setString(6, schedule.getScheduleFor());
        ps.setString(7, schedule.getSpecialNote());
        ps.setString(8, schedule.getStatus());
        ps.setString(9, schedule.getDetail());
        ps.setInt(10, schedule.getScheduleId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
