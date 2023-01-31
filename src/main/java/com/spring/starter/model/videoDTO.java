package com.spring.starter.model;

public class videoDTO {
    private String industry_name;
    private String industry_link;
    private String thumbnail_url;
    public String getIndustry_name() {
        return industry_name;
    }
    public void setIndustry_name(String industry_name) {
        this.industry_name = industry_name;
    }
    public String getIndustry_link() {
        return industry_link;
    }
    public void setIndustry_link(String industry_link) {
        this.industry_link = industry_link;
    }
    public String getThumbnail_url() {
        return thumbnail_url;
    }
    public void setThumbnail_url(String thumbnail_url) {
        this.thumbnail_url = thumbnail_url;
    }
}
