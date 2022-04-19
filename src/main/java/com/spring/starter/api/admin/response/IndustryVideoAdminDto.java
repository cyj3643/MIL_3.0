package com.spring.starter.api.admin.response;

import com.spring.starter.db.entity.IndustryVideo;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IndustryVideoAdminDto {

    private Long id;
    private String title;

    public IndustryVideoAdminDto(IndustryVideo industryVideo) {
        this.id = industryVideo.getId();
        this.title = industryVideo.getTitle();
    }
}
