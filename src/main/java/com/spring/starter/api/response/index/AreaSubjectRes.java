package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;

import java.util.List;

@Getter
public class AreaSubjectRes extends BaseResponse {
    List<AreaSubjectDto> areaSubjectDtoList;

    public AreaSubjectRes(String msg, Integer status,List<AreaSubjectDto> areaSubjectDtoList){
        super(msg,status);
        this.areaSubjectDtoList=areaSubjectDtoList;
    }
}
