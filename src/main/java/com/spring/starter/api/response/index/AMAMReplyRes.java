package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;

@Getter
public class AMAMReplyRes extends BaseResponse {
    AMAMReplyDto amamReplyDto;

    public AMAMReplyRes (String msg, Integer status, AMAMReplyDto amamReplyDto){
        super(msg,status);
        this.amamReplyDto = amamReplyDto;
    }
}
