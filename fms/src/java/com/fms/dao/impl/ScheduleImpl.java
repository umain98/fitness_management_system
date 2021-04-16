/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Schedule;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ScheduleImpl {

    private String SelectQuery = "SELECT * FROM items";

    /*
    schedule_id, schedule_created_by_id, schedule_created_by_name, schedule_start_date,
    schedule_end_date, schedule_days_per_week, schedule_for, schedule_special_note, schedule_status, schedule_detail
     */
    public boolean addSchedule(Schedule schedule) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into(schedule_created_by_id, "
                + "schedule_created_by_name, schedule_start_date,\n"
                + "    schedule_end_date, schedule_days_per_week, schedule_for, schedule_special_note,"
                + " schedule_status, schedule_detail) values (?,?,?,?,?,?,?,?,?)");
        ps.setInt(1, schedule.getCreatedById());
        ps.setString(2, schedule.getCreatedByName());
        ps.setTimestamp(3, schedule.getStartDate());
        ps.setTimestamp(4, schedule.getEndDate());
        ps.setInt(5, schedule.getDaysPerWeek());
        ps.setString(6, schedule.getScheduleFor());
        ps.setString(7, schedule.getSpecialNote());
        ps.setString(8, schedule.getStatus());
        ps.setString(9, schedule.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
