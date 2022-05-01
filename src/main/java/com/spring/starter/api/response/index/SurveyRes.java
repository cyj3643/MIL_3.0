package com.spring.starter.api.response.index;

import com.spring.starter.api.request.user.SurveyDto;
import com.spring.starter.common.model.BaseResponse;

public class SurveyRes extends BaseResponse {
    SurveyDto surveyDto;

    public SurveyRes(String msg, Integer status, SurveyDto surveyDto){
        super(msg, status);
        this.surveyDto = surveyDto;
    }
}
