/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.ScheduleImpl;
import com.fms.entity.Schedule;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class ScheduleController {

    /*
    schedule_created_by_id, schedule_created_by_name, schedule_start_date,
    schedule_end_date, schedule_days_per_week, schedule_for, schedule_special_note, schedule_status, schedule_detail
     */
    public static boolean addSchedule(int createdById, String createdByName, Timestamp startDate,
            Timestamp endDate, int daysPerWeek, String scheduleFor, String specialNote, String status, String detail) throws SQLException {
        Schedule schedule = new Schedule();
        schedule.setCreatedById(createdById);
        schedule.setCreatedByName(createdByName);
        schedule.setStartDate(startDate);
        schedule.setEndDate(endDate);
        schedule.setDaysPerWeek(daysPerWeek);
        schedule.setScheduleFor(scheduleFor);
        schedule.setSpecialNote(specialNote);
        schedule.setStatus(status);
        schedule.setDetail(detail);
        return new ScheduleImpl().addSchedule(schedule);
    }

    public static boolean updateSchedule(int scheduleId, int createdById, String createdByName, Timestamp startDate,
            Timestamp endDate, int daysPerWeek, String scheduleFor, String specialNote, String status, String detail) throws SQLException {
        Schedule schedule = new Schedule();
        schedule.setScheduleId(scheduleId);
        schedule.setCreatedById(createdById);
        schedule.setCreatedByName(createdByName);
        schedule.setStartDate(startDate);
        schedule.setEndDate(endDate);
        schedule.setDaysPerWeek(daysPerWeek);
        schedule.setScheduleFor(scheduleFor);
        schedule.setSpecialNote(specialNote);
        schedule.setStatus(status);
        schedule.setDetail(detail);
        return new ScheduleImpl().updateScheduleById(schedule);

    }

    public static boolean deleteScheduleById(int scheduleId) throws SQLException {
        return new ScheduleImpl().deleteScheduleById(scheduleId);
    }

    public static ResultSet gettAllScheduleRecords() throws SQLException {
        return new ScheduleImpl().getAllScheduleItems();
    }
}
