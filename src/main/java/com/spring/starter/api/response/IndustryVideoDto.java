package com.spring.starter.api.response;

import com.spring.starter.db.entity.IndustryVideo;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IndustryVideoDto {
    private Long id;
    private String thumbnail;
    private String videoUrl;
    private String title;

    public IndustryVideoDto(IndustryVideo industryVideo) {
        this.id = industryVideo.getId();
        this.thumbnail = industryVideo.getThumbnail();
        this.videoUrl = industryVideo.getLink();
        this.title = industryVideo.getTitle();
    }
}
