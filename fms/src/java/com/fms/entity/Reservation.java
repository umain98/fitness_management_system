/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

/**
 *
 * @author ASUS
 */
public class Reservation {

    //reservation_id, reservation_type, reservation_date, reservation_time, 
    //reservation_user_id, reservation_user_name, reservation_status, reservation_detail
    private int reservId;
    private String reservType;
    private Date reservDate;
    private Time reservTime;
    private int reservUserId;
    private String reservUserName;
    private String status;
    private String detail;

    /**
     * @return the reservId
     */
    public int getReservId() {
        return reservId;
    }

    /**
     * @param reservId the reservId to set
     */
    public void setReservId(int reservId) {
        this.reservId = reservId;
    }

    /**
     * @return the reservType
     */
    public String getReservType() {
        return reservType;
    }

    /**
     * @param reservType the reservType to set
     */
    public void setReservType(String reservType) {
        this.reservType = reservType;
    }

    /**
     * @return the reservDate
     */
    public Date getReservDate() {
        return reservDate;
    }

    /**
     * @param reservDate the reservDate to set
     */
    public void setReservDate(Date reservDate) {
        this.reservDate = reservDate;
    }
    
     /**
     * @return the reservTime
     */
    public Time getReservTime() {
        return reservTime;
    }

    /**
     * @param reservTime the reservTime to set
     */
    public void setReservTime(Time reservTime) {
        this.reservTime = reservTime;
    }
    
    /**
     * @return the reservUserId
     */
    public int getReservUserId() {
        return reservUserId;
    }

    /**
     * @param reservUserId the reservUserId to set
     */
    public void setReservUserId(int reservUserId) {
        this.reservUserId = reservUserId;
    }

    /**
     * @return the reservUserName
     */
    public String getReservUserName() {
        return reservUserName;
    }

    /**
     * @param reservUserName the reservUserName to set
     */
    public void setReservUserName(String reservUserName) {
        this.reservUserName = reservUserName;
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

 
}
