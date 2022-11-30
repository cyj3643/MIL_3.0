package com.spring.starter.api.controller;

import com.spring.starter.api.response.SubjectDto;
import com.spring.starter.api.response.index.SubjectDetailsRes;
import com.spring.starter.api.response.index.SubjectRes;
import com.spring.starter.api.service.SubjectService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RestController
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subjectService;

    @GetMapping("/cil/subject")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<SubjectDto> collect = subjectService.getAllSubject().stream().map(subject -> new SubjectDto(subject)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new SubjectRes("모든 과목을 불러왔습니다", 200, collect));
    }

    @GetMapping("/cil/subject/{subjectId}")
    public ResponseEntity<? extends BaseResponse> getDetails(@PathVariable Long subjectId) {
        return ResponseEntity.status(200).body(new SubjectDetailsRes("과목 상세정보를 불러왔습니다.", 200, subjectService.getSubjectDetails(subjectId)));
    }

    @RequestMapping("/cil/test")
    public String callView() throws Exception {
        System.out.println("test");
        return "home";
    }
}
