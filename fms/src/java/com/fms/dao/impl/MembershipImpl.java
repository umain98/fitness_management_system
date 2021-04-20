/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Membership;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class MembershipImpl {

    private String SelectQuery = "SELECT * FROM memberships";

    /*
    membership_plan_id, membership_plan_name, membership_plan_valid_period_month,
    membership_plan_personal_trainer, membership_plan_visit_count_month, membership_plan_price, 
    membership_plan_detail, membership_plan_status*/
    
    public boolean addMembership(Membership membership) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into memberships(membership_plan_name, membership_plan_valid_period_month,\n"
                + "    membership_plan_personal_trainer, membership_plan_visit_count_month, membership_plan_price, \n"
                + "    membership_plan_detail, membership_plan_status) values (?,?,?,?,?,?,?)");
        ps.setString(1, membership.getPlanName());
        ps.setInt(2, membership.getValidPeriodMonths());
        ps.setInt(3, membership.getPersonalTrainer());
        ps.setInt(4, membership.getVisitCountMonth());
        ps.setBigDecimal(5, membership.getPlanPrice());
        ps.setString(6, membership.getDetail());
        ps.setString(7, membership.getStatus());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
