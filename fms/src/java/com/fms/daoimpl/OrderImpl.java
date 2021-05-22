/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class OrderImpl {

    private String selectQuery = "SELECT * FROM gallery";

    /*
     order_id, order_id_string, order_date_time, order_item_qty, order_total_price, 
      order_total_discount, order_delivery_address, order_user_id, order_user_name, order_type, order_detail
     */
    public boolean addOrder(Order order) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into order(order_id_string, order_date_time, order_item_qty, order_total_price,"
                + "order_total_discount, order_delivery_address, order_user_id, order_user_name, order_type, order_detail) values (?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, order.getIdString());
        ps.setTimestamp(2, order.getDateTime());
        ps.setInt(3, order.getItemQty());
        ps.setBigDecimal(4, order.getTotalPrice());
        ps.setBigDecimal(5, order.getTotalDiscount());
        ps.setString(6, order.getDeliveryAddress());
        ps.setInt(7, order.getUserId());
        ps.setString(8, order.getUserName());
        ps.setString(9, order.getType());
        ps.setString(10, order.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllOrderRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteOrderById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from order where order_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateOrderById(Order order) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update order set order_id_string=?,"
                + " order_date_time=?, order_item_qty=?, order_total_price=?,order_total_discount=?,"
                + " order_delivery_address=?, order_user_id=?, order_user_name=? where order_id=?");
        ps.setString(1, order.getIdString());
        ps.setTimestamp(2, order.getDateTime());
        ps.setInt(3, order.getItemQty());
        ps.setBigDecimal(4, order.getTotalPrice());
        ps.setBigDecimal(5, order.getTotalDiscount());
        ps.setString(6, order.getDeliveryAddress());
        ps.setInt(7, order.getUserId());
        ps.setString(8, order.getUserName());
        ps.setInt(9, order.getOrderId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
