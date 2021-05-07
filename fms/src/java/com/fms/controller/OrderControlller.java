/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.OrderImpl;
import com.fms.entity.Order;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author USER
 */
public class OrderControlller {

    /*
     order_id, order_id_string, order_date_time, order_item_qty, order_total_price, 
      order_total_discount, order_delivery_address, order_user_id, order_user_name
     */
    public static boolean addOrder(String idString, Timestamp dateTime, int itemQty,
            BigDecimal totalPrice, BigDecimal totalDiscount, String deliveryAddress, int userId, String userName) throws SQLException {
        Order order = new Order();
        order.setIdString(idString);
        order.setDateTime(dateTime);
        order.setItemQty(itemQty);
        order.setTotalPrice(totalPrice);
        order.setTotalDiscount(totalDiscount);
        order.setDeliveryAddress(deliveryAddress);
        order.setUserId(userId);
        order.setUserName(userName);
        return new OrderImpl().addOrder(order);
        
    }
    
    public static boolean updateOrder(int orderId,String idString, Timestamp dateTime, int itemQty,
            BigDecimal totalPrice, BigDecimal totalDiscount, String deliveryAddress, int userId, String userName) throws SQLException{
        Order order = new Order();
        order.setOrderId(orderId);
        order.setIdString(idString);
        order.setDateTime(dateTime);
        order.setItemQty(itemQty);
        order.setTotalPrice(totalPrice);
        order.setTotalDiscount(totalDiscount);
        order.setDeliveryAddress(deliveryAddress);
        order.setUserId(userId);
        order.setUserName(userName);
        return new OrderImpl().updateOrderById(order);
    }
    
    public static boolean deleteOrderById(int orderId) throws SQLException{
        return new OrderImpl().deleteOrderById(orderId);
    }
    
    public static ResultSet getAllOrderRecords() throws SQLException{
        return new OrderImpl().getAllOrderRecords();
    }
}
