/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.math.BigDecimal;

/**
 *
 * @author ASUS
 */
public class Membership {

    //membership_plan_id, membership_plan_name, membership_plan_valid_period_month,
    //membership_plan_personal_trainer,
    //membership_plan_visit_count_month, membership_plan_price, membership_plan_detail, 
    //membership_plan_status
    private int planId;
    private String planName;
    private int validPeriodMonths;
    private int personalTrainer;
    private int visitCountMonth;
    private BigDecimal planPrice;
    private BigDecimal detail;
    private Character status;

    /**
     * @return the planId
     */
    public int getPlanId() {
        return planId;
    }

    /**
     * @param planId the planId to set
     */
    public void setPlanId(int planId) {
        this.planId = planId;
    }

    /**
     * @return the planName
     */
    public String getPlanName() {
        return planName;
    }

    /**
     * @param planName the planName to set
     */
    public void setPlanName(String planName) {
        this.planName = planName;
    }

    /**
     * @return the validPeriodMonths
     */
    public int getValidPeriodMonths() {
        return validPeriodMonths;
    }

    /**
     * @param validPeriodMonths the validPeriodMonths to set
     */
    public void setValidPeriodMonths(int validPeriodMonths) {
        this.validPeriodMonths = validPeriodMonths;
    }

    /**
     * @return the personalTrainer
     */
    public int getPersonalTrainer() {
        return personalTrainer;
    }

    /**
     * @param personalTrainer the personalTrainer to set
     */
    public void setPersonalTrainer(int personalTrainer) {
        this.personalTrainer = personalTrainer;
    }

    /**
     * @return the visitCountMonth
     */
    public int getVisitCountMonth() {
        return visitCountMonth;
    }

    /**
     * @param visitCountMonth the visitCountMonth to set
     */
    public void setVisitCountMonth(int visitCountMonth) {
        this.visitCountMonth = visitCountMonth;
    }

    /**
     * @return the planPrice
     */
    public BigDecimal getPlanPrice() {
        return planPrice;
    }

    /**
     * @param planPrice the planPrice to set
     */
    public void setPlanPrice(BigDecimal planPrice) {
        this.planPrice = planPrice;
    }

    /**
     * @return the detail
     */
    public BigDecimal getDetail() {
        return detail;
    }

    /**
     * @param detail the detail to set
     */
    public void setDetail(BigDecimal detail) {
        this.detail = detail;
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

}
