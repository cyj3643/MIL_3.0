package com.spring.starter.model;

public class jobDTO {
    private int id;
    private String small_category;
    private String carrer_path_id;


    public String getName()
    {
        return small_category;
    }

    public void setName(String name)
    {
        this.small_category = name;
    }

    public String getJob_id()
    {
        return carrer_path_id;
    }

    public void setJob_id(String job_id)
    {
        this.carrer_path_id = job_id;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
}