package com.spring.starter.model;

public class curriDTO {
    private int page_id;
    private String name;
    private String category;
    private String core_color;
    private String support_color;

    public int getPage_id(){
        return this.page_id;
    }
    public void setPage_id(int page_id){
        this.page_id = page_id;
    }
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getCategory()
    {
        return this.category;
    }
    public void setCategory(String category){
        this.category = category;
    }
    public String getCore_color()
    {
        return core_color;
    }
    public void setCore_color(String core_color){
        this.core_color = core_color;
    }
    public String getSupport_color()
    {
        return support_color;
    }
    public void setSupport_color(String support_color)
    {
        this.support_color = support_color;
    }
}
