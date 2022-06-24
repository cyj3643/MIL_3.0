package com.spring.starter.api.response;

import com.spring.starter.db.entity.Subject;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDto {

    private Long id;
    private String course;
    private String rowId;
    private String columnId;

    public SubjectDto(Subject subject) {
        this.id = subject.getId();
        this.course = subject.getName();
        this.rowId = subject.getRowId();
        this.columnId = subject.getColumnId();
    }
}
