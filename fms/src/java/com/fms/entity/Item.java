/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

import java.math.BigDecimal;

/**
 *
 * @author ASUS
 */
public class Item {

    //item_id, item_name, item_category, item_brand, item_price, item_status, item_detail
    private int itemId;
    private String itemName;
    private String itemCategory;
    private String itemBrand;
    private BigDecimal itemPrice;
    private String status;
    private String detail;
    

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
     * @return the itemName
     */
    public String getItemName() {
        return itemName;
    }

    /**
     * @param itemName the itemName to set
     */
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    /**
     * @return the itemCategory
     */
    public String getItemCategory() {
        return itemCategory;
    }

    /**
     * @param itemCategory the itemCategory to set
     */
    public void setItemCategory(String itemCategory) {
        this.itemCategory = itemCategory;
    }

    /**
     * @return the itemBrand
     */
    public String getItemBrand() {
        return itemBrand;
    }

    /**
     * @param itemBrand the itemBrand to set
     */
    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand;
    }

    /**
     * @return the itemPrice
     */
    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    /**
     * @param itemPrice the itemPrice to set
     */
    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
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
