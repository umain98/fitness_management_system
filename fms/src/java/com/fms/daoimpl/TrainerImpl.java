/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Trainer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class TrainerImpl {

    private String selectQuery = "SELECT * FROM trainers";

    public boolean addTrainer(Trainer trainer) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into trainers(trainer_name, "
                + " trainer_email, trainer_contract_period_months,  "
                + " trainer_address, trainer_contact, trainer_detail, trainer_status) values (?,?,?,?,?,?,?)");
        ps.setString(1, trainer.getTrainerName());
        ps.setString(2, trainer.getTrainerEmail());
        ps.setInt(3, trainer.getContractPeriodMonths());
        ps.setString(4, trainer.getTrainerAddress());
        ps.setString(5, trainer.getTrainerContact());
        ps.setString(6, trainer.getDetail());
        ps.setString(7, trainer.getStatus());
        ps.executeUpdate();
        ps.close();
        return true;

    }

    public ResultSet getAllTrainerRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteTrainerById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from trainers where trainer_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateTrainerById(Trainer trainer) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update trainers set trainer_name=?,"
                + " trainer_email=?, trainer_contract_period_months=?, trainer_address=?,"
                + " trainer_contact=?, trainer_detail=?, trainer_status=? where trainer_id=? ");
        ps.setString(1, trainer.getTrainerName());
        ps.setString(2, trainer.getTrainerEmail());
        ps.setInt(3, trainer.getContractPeriodMonths());
        ps.setString(4, trainer.getTrainerAddress());
        ps.setString(5, trainer.getTrainerContact());
        ps.setString(6, trainer.getDetail());
        ps.setString(7, trainer.getStatus());
        ps.setInt(8, trainer.getTrainerId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
