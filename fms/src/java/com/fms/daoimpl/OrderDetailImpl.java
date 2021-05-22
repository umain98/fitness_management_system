/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.OrderDetail;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class OrderDetailImpl {

    private String selectQuery = "SELECT * FROM gallery";

    /*order_details_id, order_details_order_id, order_details_item_id, order_details_item_qty,
    order_details_detail, order_details_price, order_details_discount_amount, order_details_discounted_price, order_details_status
     */
    public boolean addOrderDetail(OrderDetail orderdetail) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into order_details(order_details_order_id,"
                + " order_details_item_id, order_details_item_qty,order_details_detail, order_details_price, "
                + "order_details_discount_amount, order_details_discounted_price, order_details_status)values (?,?,?,?,?,?,?,?)");
        ps.setInt(1, orderdetail.getOrderId());
        ps.setInt(2, orderdetail.getItemId());
        ps.setBigDecimal(3, orderdetail.getItemQty());
        ps.setString(4, orderdetail.getDetail());
        ps.setBigDecimal(5, orderdetail.getDetailsPrice());
        ps.setBigDecimal(6, orderdetail.getDiscountAmount());
        ps.setBigDecimal(7, orderdetail.getDiscountedPrice());
        ps.setString(8, orderdetail.getStatus());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllOrderDetailRecords() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deletOrderDetailById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from order_details where order_details_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateOrderDetailById(OrderDetail orderdetail) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update order_details set order_details_order_id=?, "
                + "order_details_item_id=?, order_details_item_qty=?,order_details_detail=?, order_details_price=?, "
                + "order_details_discount_amount=?, order_details_discounted_price=?, order_details_status=? where order_details_id=?");
        ps.setInt(1, orderdetail.getOrderId());
        ps.setInt(2, orderdetail.getItemId());
        ps.setBigDecimal(3, orderdetail.getItemQty());
        ps.setString(4, orderdetail.getDetail());
        ps.setBigDecimal(5, orderdetail.getDetailsPrice());
        ps.setBigDecimal(6, orderdetail.getDiscountAmount());
        ps.setBigDecimal(7, orderdetail.getDiscountedPrice());
        ps.setString(8, orderdetail.getStatus());
        ps.setInt(9, orderdetail.getOrderDetailsId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
