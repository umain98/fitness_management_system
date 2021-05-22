/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.LogHistory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class LogHistoryImpl {

    private String selectQuery = "SELECT * FROM gallery";

    //log_history_id, log_history_date_time, log_history_user_id, log_history_user_name, log_history_detail, log_history_status
    public boolean addLogHistory(LogHistory loghistroty) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into log_history( log_history_date_time, "
                + "log_history_user_id, log_history_user_name, log_history_detail, log_history_status) values(?,?,?,?,?)");
        ps.setTimestamp(1, loghistroty.getDateTime());
        ps.setInt(2, loghistroty.getUserId());
        ps.setString(3, loghistroty.getUserName());
        ps.setString(4, loghistroty.getDetail());
        ps.setString(5, loghistroty.getStatus());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllLogHistoryRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteLogHistoryById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from log_history where log_history_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateLogHistoryById(LogHistory loghistroty) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update log_history set log_history_date_time=?,"
                + " log_history_user_id=?, log_history_user_name=?, log_history_detail=?, log_history_status=? where log_history_id=?");
        ps.setTimestamp(1, loghistroty.getDateTime());
        ps.setInt(2, loghistroty.getUserId());
        ps.setString(3, loghistroty.getUserName());
        ps.setString(4, loghistroty.getDetail());
        ps.setString(5, loghistroty.getStatus());
        ps.setInt(6, loghistroty.getHistrotyId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
