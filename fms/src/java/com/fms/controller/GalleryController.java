/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.GalleryImpl;
import com.fms.entity.Gallery;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class GalleryController {

    /*
     gallery_section, gallery_path, gallery_name
     */
    public static boolean addGallery(String gallerySection, String galleryPath, String galleryName) throws SQLException {
        Gallery gallery = new Gallery();
        gallery.setGallerySection(gallerySection);
        gallery.setGalleryPath(galleryPath);
        gallery.setGalleryName(galleryName);
        return new GalleryImpl().addGallery(gallery);
    }

    public static boolean updateGallery(int galleryId, String gallerySection, String galleryPath, String galleryName) throws SQLException {
        Gallery gallery = new Gallery();
        gallery.setGalleryId(galleryId);
        gallery.setGallerySection(gallerySection);
        gallery.setGalleryPath(galleryPath);
        gallery.setGalleryName(galleryName);
        return new GalleryImpl().updateGalleryById(gallery);
    }

    public static boolean deleteGalleryById(int galleryId) throws SQLException {
        return new GalleryImpl().deleteGalleryById(galleryId);
    }

    public static ResultSet getAllGalleryRecords() throws SQLException {
        return new GalleryImpl().getAllGalleryRecords();
    }
}
