/*package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.SurveyDto;
import com.spring.starter.api.response.index.SurveyListRes;
import com.spring.starter.api.service.SurveyService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@RequestMapping("/survey")
public class SurveyController {
    private final SurveyService surveyService;

    @PostMapping("/answer")
    public ResponseEntity< ? extends BaseResponse> surveyAdd(@Valid @RequestBody SurveyDto surveyReq){
        surveyService.addSurvey(surveyReq);
        return ResponseEntity.status(201).body(new BaseResponse("제출이 완료되었습니다.",201));
    }

    @GetMapping("/answer")
    public ResponseEntity<? extends BaseResponse> surveyList(@Valid Pageable pageable){
        return ResponseEntity.status(200).body(new SurveyListRes("설문 목록 조회가 완료되었습니다.",200,surveyService.getSurveyList(pageable)));
    }
}*/
