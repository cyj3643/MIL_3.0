package com.spring.starter.api.response.index;

import com.spring.starter.db.entity.User;
import lombok.Getter;

@Getter
public class InfoDto {

    private String name;
    private Integer studentId;

    public InfoDto(User user) {
        this.name = user.getName();
        this.studentId = user.getStudentId();
    }
}
