/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.controller;

import com.fms.dao.impl.GalleryImpl;
import com.fms.entity.Gallery;
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
        gallery.setGallerySection(gallerySection);
        return new GalleryImpl().addGallery(gallery);
    }
}
