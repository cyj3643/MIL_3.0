/*package com.spring.starter.api.service;

import com.spring.starter.api.mapper.SurveyMapper;
import com.spring.starter.api.request.user.SurveyDto;
import com.spring.starter.db.entity.Survey;
import com.spring.starter.db.repository.SurveyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SurveyService {
    private final SurveyRepository surveyRepository;
    private final SurveyMapper surveyMapper;

    public void addSurvey(SurveyDto surveyDto){
        Survey survey = surveyDto.toEntity();
        surveyRepository.save(survey);
    }

    public List<SurveyDto> getSurveyList(Pageable pageable){
        List<Survey> surveyList = surveyRepository.findAll(pageable).toList();
        List<SurveyDto> surveyDtoList = surveyMapper.surveyListToDto(surveyList);
        return surveyDtoList;
    }
}*/
