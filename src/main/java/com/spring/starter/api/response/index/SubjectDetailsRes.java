package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.MilSubject;
import com.spring.starter.db.entity.Subject;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDetailsRes extends BaseResponse {

    private String course;
    private String keyWord;
    private String details;
    private String tools;
    private String prerequisiteCourses;
    private String relatedCourses;

    public SubjectDetailsRes(String msg, Integer status, MilSubject subject) {
        super(msg, status);
        this.course = subject.getName();
        this.keyWord = subject.getKeyword();
        this.details = subject.getDetail();
        this.tools = subject.getTool();
        this.prerequisiteCourses = subject.getPrerequisiteCourses();
        this.relatedCourses = subject.getRelateSubject();
    }
}

