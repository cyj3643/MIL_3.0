package com.spring.starter.api.response.index;

import com.spring.starter.db.entity.AMAMReply;
import lombok.Getter;

import java.util.Date;

@Getter
public class AMAMReplyDto {
    String title;
    Date createdAt;
    String content;
    String area;
    String user;
    Long viewCount;

    public AMAMReplyDto(AMAMReply amamReply){
        this.title=amamReply.getTitle();
        this.createdAt=amamReply.getCreatedAt();
        this.area=amamReply.getArea().getName();
        this.user=amamReply.getUser().getName();
        this.viewCount=amamReply.getViewCount();
        this.content=amamReply.getContent();
    }
}
