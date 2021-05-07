/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class LogHistory {

    //log_history_id, log_history_date_time, log_history_user_id, log_history_user_name, log_history_detail, log_history_status
    private int histrotyId;
    private Timestamp dateTime;
    private int userId;
    private String userName;
    private String detail;
    private String status;

    /**
     * @return the histrotyId
     */
    public int getHistrotyId() {
        return histrotyId;
    }

    /**
     * @param histrotyId the histrotyId to set
     */
    public void setHistrotyId(int histrotyId) {
        this.histrotyId = histrotyId;
    }

    /**
     * @return the dateTime
     */
    public Timestamp getDateTime() {
        return dateTime;
    }

    /**
     * @param dateTime the dateTime to set
     */
    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
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
