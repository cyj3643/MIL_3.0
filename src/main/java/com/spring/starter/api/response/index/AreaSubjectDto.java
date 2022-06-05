package com.spring.starter.api.response.index;

import com.spring.starter.db.entity.AreaSubject;

import lombok.Getter;

@Getter
public class AreaSubjectDto {
    String subject;
    String area;
    Integer state;
    String borderColor;
    String backgroundColor;

    public AreaSubjectDto(AreaSubject areaSubject){
        this.subject=areaSubject.getSubject().getName();
        this.area = areaSubject.getArea().getName();
        this.state = areaSubject.getState();
        this.borderColor = areaSubject.getBorderColor();
        this.backgroundColor = areaSubject.getBackgroundColor();
    }
}
