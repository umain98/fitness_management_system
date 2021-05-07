/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.math.BigDecimal;

/**
 *
 * @author USER
 */
public class OrderDetails {
    //order_details, order_details_order_id, order_details_item_id, order_details_item_qty,
    //order_details_detail, order_details_price, order_details_discount_amount, order_details_discounted_price, order_details_status

    //private int orderDetails;
   // private String orderId;
    private int itemId;
    private BigDecimal itemQty; 
    //private String  
    private BigDecimal detailsPrice;
    private BigDecimal discountAmount;
    private BigDecimal discountedPrice;
    private String status;
}
