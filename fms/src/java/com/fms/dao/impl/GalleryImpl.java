/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.dao.impl;

import com.fms.databaseconnecttion.DatabaseConnection;
import com.fms.entity.Gallery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class GalleryImpl {

    private String selectQuery = "SELECT * FROM gallery";

    /*
     gallery_id, gallery_section, gallery_path, gallery_name
     */
    public boolean addGallery(Gallery gallery) throws SQLException {
        Connection con = DatabaseConnection.getDatabaseConnection();
        PreparedStatement ps = con.prepareStatement("insert into gallery(gallery_section, gallery_path, gallery_name) values (?,?,?)");
        ps.setString(1, gallery.getGallerySection());
        ps.setString(2, gallery.getGalleryPath());
        ps.setString(3, gallery.getGalleryName());
        ps.executeUpdate();
        ps.close();
        return true;
    }

    public ResultSet getAllGalleryItems() throws SQLException {
        return new CommonDaoImpl().getAllRecords(selectQuery);
    }
}
