package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;

import java.util.List;

@Getter
public class AMAMBoardRes extends BaseResponse {
    List<AMAMBoardDto> amamBoardDtoList;

    public AMAMBoardRes (String msg, Integer status, List<AMAMBoardDto> amamBoardDtoList){
        super(msg,status);
        this.amamBoardDtoList=amamBoardDtoList;
    }
}
