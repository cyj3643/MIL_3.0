package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.AreaSubjectEnum;
import com.spring.starter.api.response.index.AreaSubjectDto;
import com.spring.starter.api.response.index.AreaSubjectRes;
import com.spring.starter.api.service.AreaSubjectService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/cil")
public class AreaSubjectController {

    private final AreaSubjectService areaSubjectService;

    @GetMapping("/{area}")
    public ResponseEntity<? extends BaseResponse> GameSubjectList(@Valid @PathVariable(value = "area") AreaSubjectEnum areaSubjectEnum){
        System.out.println(areaSubjectEnum.toString());
        List<AreaSubjectDto> areaSubjectDtoList = areaSubjectService.getAreaSubject(areaSubjectEnum);
        return ResponseEntity.status(200).body(new AreaSubjectRes(areaSubjectEnum.toString()+"조회 완료",200,areaSubjectDtoList));
    }
}
