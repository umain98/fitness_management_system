/*
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
public class OrderDetail {

    /*order_details_id, order_details_order_id, order_details_item_id, order_details_item_qty,
    order_details_detail, order_details_price, order_details_discount_amount, order_details_discounted_price, order_details_status
     */

    private int orderDetailsId;
    private int orderId;
    private int itemId;
    private BigDecimal itemQty;
    private String  detail;
    private BigDecimal detailsPrice;
    private BigDecimal discountAmount;
    private BigDecimal discountedPrice;
    private String status;

    /**
     * @return the orderDetailsId
     */
    public int getOrderDetailsId() {
        return orderDetailsId;
    }

    /**
     * @param orderDetailsId the orderDetailsId to set
     */
    public void setOrderDetailsId(int orderDetailsId) {
        this.orderDetailsId = orderDetailsId;
    }

    /**
     * @return the orderId
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the itemId
     */
    public int getItemId() {
        return itemId;
    }

    /**
     * @param itemId the itemId to set
     */
    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    /**
     * @return the itemQty
     */
    public BigDecimal getItemQty() {
        return itemQty;
    }

    /**
     * @param itemQty the itemQty to set
     */
    public void setItemQty(BigDecimal itemQty) {
        this.itemQty = itemQty;
    }

    /**
     * @return the detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     * @param detail the detail to set
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }

    /**
     * @return the detailsPrice
     */
    public BigDecimal getDetailsPrice() {
        return detailsPrice;
    }

    /**
     * @param detailsPrice the detailsPrice to set
     */
    public void setDetailsPrice(BigDecimal detailsPrice) {
        this.detailsPrice = detailsPrice;
    }

    /**
     * @return the discountAmount
     */
    public BigDecimal getDiscountAmount() {
        return discountAmount;
    }

    /**
     * @param discountAmount the discountAmount to set
     */
    public void setDiscountAmount(BigDecimal discountAmount) {
        this.discountAmount = discountAmount;
    }

    /**
     * @return the discountedPrice
     */
    public BigDecimal getDiscountedPrice() {
        return discountedPrice;
    }

    /**
     * @param discountedPrice the discountedPrice to set
     */
    public void setDiscountedPrice(BigDecimal discountedPrice) {
        this.discountedPrice = discountedPrice;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
}

