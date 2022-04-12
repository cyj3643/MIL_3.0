package com.spring.starter.api.response.index;


import com.spring.starter.db.entity.AMAM;
import lombok.Getter;

import java.util.Date;

@Getter
public class AMAMDto {
    String title;
    Date createdAt;
    String content;
    String area;
    String user;
    Long viewCount;

    public AMAMDto(AMAM amam){
        this.title=amam.getTitle();
        this.createdAt=amam.getCreatedAt();
        this.area=amam.getArea().getName();
        this.user=amam.getUser().getName();
        this.viewCount=amam.getViewCount();
        this.content=amam.getContent();
    }
}
