/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author ASUS
 */
public class User {

    /*
        user_id, user_first_name, user_last_name, user_contact, user_email,
    user_address, user_reg_date, user_date_of_birth, user_height_cm, 
    user_weight_kg, user_status, user_detail, user_password
     */
    private int userId;
    private String firstName;
    private String lastName;
    private String contact;
    private String email;
    private String address;
    private Timestamp userRegDate;
    private Date dateOfBirth;
    private BigDecimal heightCm;
    private BigDecimal weightKg;
    private Character status;
    private String detail;
    private String password;

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
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the userRegDate
     */
    public Timestamp getUserRegDate() {
        return userRegDate;
    }

    /**
     * @param userRegDate the userRegDate to set
     */
    public void setUserRegDate(Timestamp userRegDate) {
        this.userRegDate = userRegDate;
    }

    /**
     * @return the dateOfBirth
     */
    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    /**
     * @param dateOfBirth the dateOfBirth to set
     */
    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    /**
     * @return the heightCm
     */
    public BigDecimal getHeightCm() {
        return heightCm;
    }

    /**
     * @param heightCm the heightCm to set
     */
    public void setHeightCm(BigDecimal heightCm) {
        this.heightCm = heightCm;
    }

    /**
     * @return the weightKg
     */
    public BigDecimal getWeightKg() {
        return weightKg;
    }

    /**
     * @param weightKg the weightKg to set
     */
    public void setWeightKg(BigDecimal weightKg) {
        this.weightKg = weightKg;
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

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

}
