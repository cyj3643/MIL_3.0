package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.AMAM;
import com.spring.starter.db.entity.AMAMReply;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.User;
import lombok.Getter;

import javax.validation.constraints.NotNull;

@Getter
public class PostamamEmailReplyReq {

    @NotNull
    String content;

    @NotNull
    String code;

    public AMAMReply toEntity(String title, User user, Area area, AMAM amam){
        return AMAMReply.builder()
                .title(title)
                .content(this.content)
                .area(area)
                .user(user)
                .viewCount(0L)
                .amam(amam)
                .build();
    }
}
