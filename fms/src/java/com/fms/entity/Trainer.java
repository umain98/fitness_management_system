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
public class Trainer {

    /*
        trainer_id, trainer_name, trainer_email, trainer_reg_date, 
    trainer_contract_period_months, trainer_address, trainer_contact, 
    trainer_detail, trainer_status
     */
    private int trainerId;
    private String trainerName;
    private String trainerEmail;
    private Timestamp trainerRegDate;
    private int contractPeriodMonths;
    private String trainerAddress;
    private String trainerContact;
    private String detail;
    private String status;

    /**
     * @return the trainerId
     */
    public int getTrainerId() {
        return trainerId;
    }

    /**
     * @param trainerId the trainerId to set
     */
    public void setTrainerId(int trainerId) {
        this.trainerId = trainerId;
    }

    /**
     * @return the trainerName
     */
    public String getTrainerName() {
        return trainerName;
    }

    /**
     * @param trainerName the trainerName to set
     */
    public void setTrainerName(String trainerName) {
        this.trainerName = trainerName;
    }

    /**
     * @return the trainerEmail
     */
    public String getTrainerEmail() {
        return trainerEmail;
    }

    /**
     * @param trainerEmail the trainerEmail to set
     */
    public void setTrainerEmail(String trainerEmail) {
        this.trainerEmail = trainerEmail;
    }

    /**
     * @return the trainerRegDate
     */
    public Timestamp getTrainerRegDate() {
        return trainerRegDate;
    }

    /**
     * @param trainerRegDate the trainerRegDate to set
     */
    public void setTrainerRegDate(Timestamp trainerRegDate) {
        this.trainerRegDate = trainerRegDate;
    }

    /**
     * @return the contractPeriodMonths
     */
    public int getContractPeriodMonths() {
        return contractPeriodMonths;
    }

    /**
     * @param contractPeriodMonths the contractPeriodMonths to set
     */
    public void setContractPeriodMonths(int contractPeriodMonths) {
        this.contractPeriodMonths = contractPeriodMonths;
    }

    /**
     * @return the trainerAddress
     */
    public String getTrainerAddress() {
        return trainerAddress;
    }

    /**
     * @param trainerAddress the trainerAddress to set
     */
    public void setTrainerAddress(String trainerAddress) {
        this.trainerAddress = trainerAddress;
    }

    /**
     * @return the trainerContact
     */
    public String getTrainerContact() {
        return trainerContact;
    }

    /**
     * @param trainerContact the trainerContact to set
     */
    public void setTrainerContact(String trainerContact) {
        this.trainerContact = trainerContact;
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
