/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.MembershipImpl;
import com.fms.entity.Membership;
import java.math.BigDecimal;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class MembershipController {

    /*
    membership_plan_name, membership_plan_valid_period_month,
    membership_plan_personal_trainer, membership_plan_visit_count_month, membership_plan_price, 
    membership_plan_detail, membership_plan_status*/
    public static boolean addMembership(String planName, int validPeriodMonths, int personalTrainer, int visitCountMonth, BigDecimal planPrice, String planDetail, String planStatus) throws SQLException {
        Membership membership = new Membership();
        membership.setPlanName(planName);
        membership.setValidPeriodMonths(validPeriodMonths);
        membership.setPersonalTrainer(personalTrainer);
        membership.setVisitCountMonth(visitCountMonth);
        membership.setPlanPrice(planPrice);
        membership.setDetail(planDetail);
        membership.setStatus(planStatus);
        return new MembershipImpl().addMembership(membership);
    }
}
