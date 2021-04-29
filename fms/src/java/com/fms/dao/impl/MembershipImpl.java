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
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class MembershipImpl {

    private String selectQuery = "SELECT * FROM memberships";
    
    /*
    membership_plan_id, membership_plan_name, membership_plan_valid_period_month,
    membership_plan_personal_trainer, membership_plan_visit_count_month, membership_plan_price, 
    membership_plan_detail, membership_plan_status*/
    public boolean addMembership(Membership membership) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into memberships(membership_plan_name, membership_plan_valid_period_month,"
                + " membership_plan_personal_trainer, membership_plan_visit_count_month, membership_plan_price,"
                + " membership_plan_detail, membership_plan_status) values (?,?,?,?,?,?,?)");
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

    public ResultSet getAllMembershipRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteMembershipById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from memberships where membership_plan_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateMembershipById(Membership membership) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update memberships set membership_plan_name=?, membership_plan_valid_period_month=?, "
                + "membership_plan_personal_trainer=?, membership_plan_visit_count_month=?, membership_plan_price=?, membership_plan_detail=?,"
                + "membership_plan_status=? where membership_plan_id=?");
        ps.setString(1, membership.getPlanName());
        ps.setInt(2, membership.getValidPeriodMonths());
        ps.setInt(3, membership.getPersonalTrainer());
        ps.setInt(4, membership.getVisitCountMonth());
        ps.setBigDecimal(5, membership.getPlanPrice());
        ps.setString(6, membership.getDetail());
        ps.setString(7, membership.getStatus());
        ps.setInt(8, membership.getPlanId());
        ps.executeUpdate();
        ps.close();
        return true;
    }

}
