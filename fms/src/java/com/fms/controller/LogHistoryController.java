/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.LogHistoryImpl;
import com.fms.entity.LogHistory;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class LogHistoryController {
    //log_history_id, log_history_date_time, log_history_user_id, log_history_user_name, log_history_detail, log_history_status

    public static boolean addLogHistory(Timestamp dateTime, int userId, String userName, String detail, String status) throws SQLException {
        LogHistory loghistory = new LogHistory();
        loghistory.setDateTime(dateTime);
        loghistory.setUserId(userId);
        loghistory.setUserName(userName);
        loghistory.setDetail(detail);
        loghistory.setStatus(status);
        return new LogHistoryImpl().addLogHistory(loghistory);
    }

    public static boolean updateLogHistory(int historyId, Timestamp dateTime, int userId, String userName, String detail, String status) throws SQLException {
        LogHistory loghistory = new LogHistory();
        loghistory.setHistrotyId(historyId);
        loghistory.setDateTime(dateTime);
        loghistory.setUserId(userId);
        loghistory.setUserName(userName);
        loghistory.setDetail(detail);
        loghistory.setStatus(status);
        return new LogHistoryImpl().updateLogHistoryById(loghistory);
    }
    
    public static boolean deleteLogHistoryById(int historyId) throws SQLException{
        return new LogHistoryImpl().deleteLogHistoryById(historyId);
    }
    
    public static ResultSet getAllLogHistoryRecords() throws SQLException{
        return new LogHistoryImpl().getAllLogHistoryRecords();
    }
    
}
