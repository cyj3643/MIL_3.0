package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;
import lombok.Getter;

@Getter
public class InfoDto extends BaseResponse {

    private String name;
    private Integer studentId;
    private String email;
    private String area;

    public InfoDto(String msg, Integer status, User user) {
        super(msg, status);
        this.name = user.getName();
        this.studentId = user.getStudentId();
        this.email = user.getEmail();
        this.area = user.getArea().getName();
    }
}
