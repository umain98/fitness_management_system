/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.daoimpl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ItemImpl {

    private String selectQuery = "SELECT * FROM items";

    /*
    item_id, item_name, item_category, item_brand, item_price, item_status, item_detail
     */
    public boolean addItem(Item item) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into items(item_name, item_category, item_brand, item_price, item_status, item_detail) values (?,?,?,?,?,?)");
        ps.setString(1, item.getItemName());
        ps.setString(2, item.getItemCategory());
        ps.setString(3, item.getItemBrand());
        ps.setBigDecimal(4, item.getItemPrice());
        ps.setString(5, item.getStatus());
        ps.setString(6, item.getDetail());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllItems() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }

    public boolean deleteItemById(int id) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("delete from items where item_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public boolean updateItemById(Item item) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("update items set item_name=?, "
                + "item_category=?, item_brand=?, item_price=?, item_status=?, item_detail=? "
                + "where item_id=? ");
        ps.setString(1, item.getItemName());
        ps.setString(2, item.getItemCategory());
        ps.setString(3, item.getItemBrand());
        ps.setBigDecimal(4, item.getItemPrice());
        ps.setString(5, item.getStatus());
        ps.setString(6, item.getDetail());
        ps.setInt(7, item.getItemId());
        ps.executeUpdate();
        ps.close();
        return true;
    }
}
