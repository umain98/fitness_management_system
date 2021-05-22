/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.daoimpl.OrderDetailImpl;
import com.fms.entity.OrderDetail;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class OrderDetailController {

    /*order_details_id, order_details_order_id, order_details_item_id, order_details_item_qty,
    order_details_detail, order_details_price, order_details_discount_amount, order_details_discounted_price, order_details_status
     */
    public static boolean addOrderDetail(int orderId, int itemId, BigDecimal itemQty,
            String detail, BigDecimal detailsPrice, BigDecimal discountAmount, BigDecimal discountedPrice, String status) throws SQLException {
        OrderDetail orderdetail = new OrderDetail();
        orderdetail.setOrderId(orderId);
        orderdetail.setItemId(itemId);
        orderdetail.setItemQty(itemQty);
        orderdetail.setDetail(detail);
        orderdetail.setDetailsPrice(detailsPrice);
        orderdetail.setDiscountAmount(discountAmount);
        orderdetail.setDiscountedPrice(discountedPrice);
        orderdetail.setStatus(status);
        return new OrderDetailImpl().addOrderDetail(orderdetail);

    }

    public static boolean updateOrderDetail(int orderDetailsId, int orderId, int itemId, BigDecimal itemQty,
            String detail, BigDecimal detailsPrice, BigDecimal discountAmount, BigDecimal discountedPrice, String status) throws SQLException {
        OrderDetail orderdetail = new OrderDetail();
        orderdetail.setOrderDetailsId(orderDetailsId);
        orderdetail.setOrderId(orderId);
        orderdetail.setItemId(itemId);
        orderdetail.setItemQty(itemQty);
        orderdetail.setDetail(detail);
        orderdetail.setDetailsPrice(detailsPrice);
        orderdetail.setDiscountAmount(discountAmount);
        orderdetail.setDiscountedPrice(discountedPrice);
        orderdetail.setStatus(status);
        return new OrderDetailImpl().updateOrderDetailById(orderdetail);
    }

    public static boolean deleteOrderDetailById(int orderDetailsId) throws SQLException {
        return new OrderDetailImpl().deletOrderDetailById(orderDetailsId);
    }
    
    public static ResultSet getAllOrderDetailRecords() throws SQLException{
        return new OrderDetailImpl().getAllOrderDetailRecords();
    }

}
