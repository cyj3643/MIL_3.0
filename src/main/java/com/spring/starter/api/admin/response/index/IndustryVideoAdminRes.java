package com.spring.starter.api.admin.response.index;

import com.spring.starter.api.admin.response.IndustryVideoAdminDto;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class IndustryVideoAdminRes extends BaseResponse {

    private List<IndustryVideoAdminDto> industryVideoInfoResDtoList;

    public IndustryVideoAdminRes(String msg, Integer status, List<IndustryVideoAdminDto> industryVideoInfoResDtoList) {
        super(msg, status);
        this.industryVideoInfoResDtoList = industryVideoInfoResDtoList;
    }
}
