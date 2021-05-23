/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.core.CommonConstants;
import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class UserImpl {

    private String selectQuery = "SELECT * FROM users";

    /*
    user_id, user_first_name, user_last_name, user_contact, user_email, user_address,
    user_reg_date, user_date_of_birth, user_height_cm, user_weight_kg, user_status, user_detail, user_password
     */
    public boolean addUser(User user) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into users( user_first_name, user_last_name,  "
                + " user_contact, user_email, user_address,  user_reg_date, user_date_of_birth, user_height_cm, user_weight_kg, user_status, "
                + " user_detail, user_password) values (?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, user.getFirstName());
        ps.setString(2, user.getLastName());
        ps.setString(3, user.getContact());
        ps.setString(4, user.getEmail());
        ps.setString(5, user.getAddress());
        ps.setString(6, user.getUserRegDate());
        ps.setString(7, user.getDateOfBirth());
        ps.setBigDecimal(8, user.getHeightCm());
        ps.setBigDecimal(9, user.getWeightKg());
        ps.setString(10, user.getStatus());
        ps.setString(11, user.getDetail());
        ps.setString(12, user.getPassword());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllUserRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteUserById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from users where user_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public int getAllCount() throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("select count(user_id) as user_count from users");
        int count = 0;
        ResultSet rset = ps.executeQuery();
        while (rset.next()) {
            count = rset.getInt("user_count");
        }
        return count;
    }

    public boolean updateUserById(User user) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update users set user_first_name=?, "
                + "user_last_name=?, user_contact=?, user_email=?, user_address=?,user_reg_date=?, "
                + "user_date_of_birth=?, user_height_cm=?, user_weight_kg=?, user_status=?, user_detail=?, user_password=? where user_id=?");
        ps.setString(1, user.getFirstName());
        ps.setString(2, user.getLastName());
        ps.setString(3, user.getContact());
        ps.setString(4, user.getEmail());
        ps.setString(5, user.getAddress());
        ps.setString(6, user.getUserRegDate());
        ps.setString(7, user.getDateOfBirth());
        ps.setBigDecimal(8, user.getHeightCm());
        ps.setBigDecimal(9, user.getWeightKg());
        ps.setString(10, user.getStatus());
        ps.setString(11, user.getDetail());
        ps.setString(12, user.getPassword());
        ps.setInt(13, user.getUserId());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getResultSetByOneAttribute(String attribute, String condition, String value) throws SQLException {
        return new CommonDaoImpl().getResultByAttribute(selectQuery, attribute, condition, value);
    }

    public ResultSet getResultSetByMoreAttribute(ArrayList<String[]> attributeConditionValueList, String operator) throws SQLException {
        return new CommonDaoImpl().getResultByAttributesWithJoinOperator(selectQuery, attributeConditionValueList, operator);
    }

    public ResultSet getUserResultSeByUsernameAndPassword(String user, String password) throws SQLException {
        ArrayList<String[]> attributeConditionValueList = new ArrayList<>();

        String[] ACV1 = {"user_email", CommonConstants.sql.EQUAL, user};
        attributeConditionValueList.add(ACV1);

        String[] ACV2 = {"user_password", CommonConstants.sql.EQUAL, password};
        attributeConditionValueList.add(ACV2);

        return getResultSetByMoreAttribute(attributeConditionValueList, CommonConstants.sql.AND);

    }

    public User getUserByUserNameAndPassword(String user, String password) throws SQLException {
        ResultSet rset = getUserResultSeByUsernameAndPassword(user, password);
        User usr = null;
        while (rset.next()) {
            usr = new User();
            usr.setEmail(rset.getString("user_email"));
            usr.setPassword(rset.getString("user_password"));
            usr.setFirstName(rset.getString("user_first_name"));
            usr.setUserId(rset.getInt("user_id"));
            usr.setLastName(rset.getString("user_last_name"));
            usr.setContact(rset.getString("user_contact"));
            usr.setAddress(rset.getString("user_address"));
            usr.setUserRegDate(rset.getString("user_reg_date"));
            usr.setDateOfBirth(rset.getString("user_date_of_birth"));
            usr.setHeightCm(rset.getBigDecimal("user_height_cm"));
            usr.setWeightKg(rset.getBigDecimal("user_weight_kg"));
            usr.setStatus(rset.getString("user_status"));
            usr.setDetail(rset.getString("user_detail"));
        }
        return usr;
    }

}
