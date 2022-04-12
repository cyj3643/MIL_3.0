package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.AMAM;
import com.spring.starter.db.entity.AMAMReply;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.User;
import lombok.Getter;

import javax.validation.constraints.NotNull;

@Getter
public class PostamamReplyReq {

    @NotNull
    String user;

    @NotNull
    String content;

    @NotNull
    String amam;

    public AMAMReply toEntity(String title, User user, Area area, AMAM amam){
        AMAMReply amamReply = AMAMReply.builder()
                .title(title)
                .content(this.content)
                .area(area)
                .user(user)
                .amam(amam)
                .viewCount(0L)
                .build();
        return amamReply;
    }
}
