package com.spring.starter.api.response.index;

import com.spring.starter.api.request.user.SurveyDto;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;

import java.util.List;

@Getter
public class SurveyListRes extends BaseResponse {
    List<SurveyDto> surveyList;

    public SurveyListRes(String msg,Integer status, List<SurveyDto> surveyList){
        super(msg, status);
        this.surveyList = surveyList;
    }
}
