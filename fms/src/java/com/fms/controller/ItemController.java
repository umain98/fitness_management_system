/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.ItemImpl;
import com.fms.entity.Item;
import java.math.BigDecimal;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class ItemController {

    /*
     item_name, item_category, item_brand, item_price, item_status, item_detail
     */
    public static boolean addItem(String itemName, String itemCategory, String itemBrand,
            BigDecimal itemPrice, String itemStatus, String itemDetail) throws SQLException {
        Item item = new Item();
        item.setItemName(itemName);
        item.setItemCategory(itemCategory);
        item.getItemBrand(itemBrand);
        item.setItemPrice(itemPrice);
        item.setStatus(itemStatus);
        item.setDetail(itemDetail);
        return new ItemImpl().addItem(item);

    }

    public static boolean updateItem(int itemId, String itemName, String itemCategory, String itemBrand,
            BigDecimal itemPrice, String itemStatus, String itemDetail) throws SQLException {
        Item item = new Item();
        item.setItemId(itemId);
        item.setItemName(itemName);
        item.setItemCategory(itemCategory);
        item.getItemBrand(itemBrand);
        item.setItemPrice(itemPrice);
        item.setStatus(itemStatus);
        item.setDetail(itemDetail);
        return new ItemImpl().updateItemById(item);
    }

}
