/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Trainer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class TrainerImpl {

    private String SelectQuery = "SELECT * FROM items";

    /*
    trainer_id, trainer_name, trainer_email, trainer_reg_date, trainer_contract_period_months, 
    trainer_address, trainer_contact, trainer_detail, trainer_status
     */
    public boolean addTrainer(Trainer trainer) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into( trainer_name, trainer_email,"
                + " trainer_reg_date, trainer_contract_period_months, \n"
                + "    trainer_address, trainer_contact, trainer_detail, trainer_status) values (?,?,?,?,?,?,?,?)");
        ps.setString(1, trainer.getTrainerName());
        ps.setString(2, trainer.getTrainerEmail());
        ps.setTimestamp(3, trainer.getTrainerRegDate());
        ps.setInt(4, trainer.getContractPeriodMonths());
        ps.setString(5, trainer.getTrainerAddress());
        ps.setString(6, trainer.getTrainerContact());
        ps.setString(7, trainer.getDetail());
        ps.setString(8, trainer.getStatus());
        ps.executeUpdate();
        ps.close();
        return true;

    }
}
