package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectInfoRes extends BaseResponse {


    public ProjectInfoRes(String msg, Integer status) {
        super(msg, status);
    }
}
