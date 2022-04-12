package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
public class InfoDto extends BaseResponse {

    private String name;
    private Integer studentId;

    public InfoDto(String msg, Integer status, User user) {
        super(msg, status);
        this.name = user.getName();
        this.studentId = user.getStudentId();
    }
}
