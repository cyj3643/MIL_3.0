package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;

@Getter
public class AMAMRes extends BaseResponse {
    AMAMDto amamDto;

    public AMAMRes (String msg, Integer status, AMAMDto amamDto){
        super(msg,status);
        this.amamDto = amamDto;
    }
}
