package com.spring.starter.api.response.index;

import com.spring.starter.api.response.IndustryVideoDto;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class IndustryVideoRes extends BaseResponse {

    private List<IndustryVideoDto> industryVideoDto;

    public IndustryVideoRes(String msg, Integer status, List<IndustryVideoDto> video) {
        super(msg, status);
        this.industryVideoDto = video;
    }
}
