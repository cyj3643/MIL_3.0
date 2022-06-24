package com.spring.starter.api.service;

import com.spring.starter.api.request.user.AreaSubjectEnum;
import com.spring.starter.api.response.index.AreaSubjectDto;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.AreaSubject;
import com.spring.starter.db.repository.AreaRepository;
import com.spring.starter.db.repository.AreaSubjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AreaSubjectService {
    private final AreaSubjectRepository areaSubjectRepository;
    private final AreaRepository areaRepository;

    @Transactional
    public List<AreaSubjectDto> getAreaSubject(AreaSubjectEnum areaSubjectEnum){
        Optional<Area> area = Optional.ofNullable(areaRepository.findByName(areaSubjectEnum.toString()).orElseThrow(() -> new RuntimeException("존재하지 않는 분야입니다.")));
        List<AreaSubject> areaSubjectList = areaSubjectRepository.findByArea(area);
        List<AreaSubjectDto> areaSubjectDtoList = areaSubjectList.stream().map(areaSubject -> new AreaSubjectDto(areaSubject)).collect(Collectors.toList());
        return areaSubjectDtoList;
    }
}
