/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.TrainerImpl;
import com.fms.entity.Trainer;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class TrainerController {

    /*
    trainer_name, trainer_email, trainer_reg_date, trainer_contract_period_months, 
    trainer_address, trainer_contact, trainer_detail, trainer_status
     */
    public static boolean addTrainer(String trainerName, String trainerEmail, Timestamp trainerRegDate,
            int contractPeriodMonths, String trainerAddress, String trainerContact, String detail, String status) throws SQLException {
        Trainer trainer = new Trainer();
        trainer.setTrainerName(trainerName);
        trainer.setTrainerEmail(trainerEmail);
        trainer.setTrainerRegDate(trainerRegDate);
        trainer.setContractPeriodMonths(contractPeriodMonths);
        trainer.setTrainerAddress(trainerAddress);
        trainer.setTrainerContact(trainerContact);
        trainer.setDetail(detail);
        trainer.setStatus(status);
        return new TrainerImpl().addTrainer(trainer);
    }

    public static boolean updateTrainer(int trainerId, String trainerName, String trainerEmail, Timestamp trainerRegDate,
            int contractPeriodMonths, String trainerAddress, String trainerContact, String detail, String status) throws SQLException {
        Trainer trainer = new Trainer();
        trainer.setTrainerId(trainerId);
        trainer.setTrainerName(trainerName);
        trainer.setTrainerEmail(trainerEmail);
        trainer.setTrainerRegDate(trainerRegDate);
        trainer.setContractPeriodMonths(contractPeriodMonths);
        trainer.setTrainerAddress(trainerAddress);
        trainer.setTrainerContact(trainerContact);
        trainer.setDetail(detail);
        trainer.setStatus(status);
        return new TrainerImpl().updateTrainerById(trainer);

    }
}
