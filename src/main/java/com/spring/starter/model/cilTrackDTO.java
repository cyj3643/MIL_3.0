package com.spring.starter.model;
public class cilTrackDTO {
    private int row_id;
    private int col_id;
    private String code;
    private String type;
    private String carrer_path_id;

    public int getRow_id() {
        return row_id;
    }
    public void setRow_id(int row_id) {
        this.row_id = row_id;
    }
    public int getCol_id() {
        return col_id;
    }
    public void setCol_id(int col_id) {
        this.col_id = col_id;
    }
    public String getSubject() {
        return code;
    }
    public void setSubject(String code) {
        this.code = code;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getPage_id() {
        return carrer_path_id;
    }
    public void setPage_id(String carrer_path_id) {
        this.carrer_path_id = carrer_path_id;
    }

}
