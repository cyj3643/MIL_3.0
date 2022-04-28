package com.spring.starter.api.admin.response.index;

import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.IndustryVideo;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IndustryVideoAdminInfoRes extends BaseResponse {

    private Long id;
    private String title;
    private String thumbnail;
    private String link;

    public IndustryVideoAdminInfoRes(String msg, Integer status, IndustryVideo industryVideo) {
        super(msg, status);
        this.id = industryVideo.getId();
        this.title = industryVideo.getTitle();
        this.thumbnail = industryVideo.getThumbnail();
        this.link = industryVideo.getLink();
    }
}
