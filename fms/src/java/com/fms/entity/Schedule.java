/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author ASUS
 */
public class Schedule {

    private int scheduleId;
    private int createdById;
    private String createdByName;
    private String startDate;
    private String endDate;
    private int daysPerWeek;
    private String scheduleFor;
    private String specialNote;
    private String status;
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
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
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
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
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
