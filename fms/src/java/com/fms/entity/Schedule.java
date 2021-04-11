/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.sql.Timestamp;

/**
 *
 * @author ASUS
 */
public class Schedule {
    //schedule_id, schedule_created_by_id, schedule_created_by_name, schedule_start_date, schedule_end_date, schedule_days_per_week, schedule_for, schedule_special_note, schedule_status, schedule_detail
    private int scheduleId;
    private int createdById;
    private String createdByName;
    private Timestamp startDate;
    private Timestamp endDate;
    private int daysPerWeek;
    private String scheduleFor;
    private String specialNote;
    private Character status;
    private String detail;

    /**
     * @return the scheduleId
     */
    public int getScheduleId() {
        return scheduleId;
    }

    /**
     * @param scheduleId the scheduleId to set
     */
    public void setScheduleId(int scheduleId) {
        this.scheduleId = scheduleId;
    }

    /**
     * @return the createdById
     */
    public int getCreatedById() {
        return createdById;
    }

    /**
     * @param createdById the createdById to set
     */
    public void setCreatedById(int createdById) {
        this.createdById = createdById;
    }

    /**
     * @return the createdByName
     */
    public String getCreatedByName() {
        return createdByName;
    }

    /**
     * @param createdByName the createdByName to set
     */
    public void setCreatedByName(String createdByName) {
        this.createdByName = createdByName;
    }

    /**
     * @return the startDate
     */
    public Timestamp getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(Timestamp startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public Timestamp getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(Timestamp endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the daysPerWeek
     */
    public int getDaysPerWeek() {
        return daysPerWeek;
    }

    /**
     * @param daysPerWeek the daysPerWeek to set
     */
    public void setDaysPerWeek(int daysPerWeek) {
        this.daysPerWeek = daysPerWeek;
    }

    /**
     * @return the scheduleFor
     */
    public String getScheduleFor() {
        return scheduleFor;
    }

    /**
     * @param scheduleFor the scheduleFor to set
     */
    public void setScheduleFor(String scheduleFor) {
        this.scheduleFor = scheduleFor;
    }

    /**
     * @return the specialNote
     */
    public String getSpecialNote() {
        return specialNote;
    }

    /**
     * @param specialNote the specialNote to set
     */
    public void setSpecialNote(String specialNote) {
        this.specialNote = specialNote;
    }

    /**
     * @return the status
     */
    public Character getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(Character status) {
        this.status = status;
    }

    /**
     * @return the detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     * @param detail the detail to set
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }
    
    
}
