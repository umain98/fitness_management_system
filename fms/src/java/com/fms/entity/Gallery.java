/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.entity;

/**
 *
 * @author ASUS
 */
public class Gallery {

    //gallery_id, gallery_section, gallery_path, gallery_name
    private int galleryId;
    private String gallerySection;
    private String galleryPath;
    private String galleryName;

    /**
     * @return the galleryId
     */
    public int getGalleryId() {
        return galleryId;
    }

    /**
     * @param galleryId the galleryId to set
     */
    public void setGalleryId(int galleryId) {
        this.galleryId = galleryId;
    }

    /**
     * @return the gallerySection
     */
    public String getGallerySection() {
        return gallerySection;
    }

    /**
     * @param gallerySection the gallerySection to set
     */
    public void setGallerySection(String gallerySection) {
        this.gallerySection = gallerySection;
    }

    /**
     * @return the galleryPath
     */
    public String getGalleryPath() {
        return galleryPath;
    }

    /**
     * @param galleryPath the galleryPath to set
     */
    public void setGalleryPath(String galleryPath) {
        this.galleryPath = galleryPath;
    }

    /**
     * @return the galleryName
     */
    public String getGalleryName() {
        return galleryName;
    }

    /**
     * @param galleryName the galleryName to set
     */
    public void setGalleryName(String galleryName) {
        this.galleryName = galleryName;
    }

    public void setgalleryPath() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
