package com.spring.starter.api.admin.controller;

import com.spring.starter.api.admin.request.MentorRegReq;
import com.spring.starter.api.admin.service.AdminMentorService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/mentor")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class MentorController {
    private final AdminMentorService adminMentorService;

    @PutMapping()
    ResponseEntity <? extends BaseResponse> mentorAdd(@Valid @RequestBody MentorRegReq mentorRegReq){
        if(!adminMentorService.isExistUser(mentorRegReq.getName(),mentorRegReq.getId()))
            return ResponseEntity.status(404).body(new BaseResponse("존재하지 않는 사용자입니다.",404));
        adminMentorService.addMentor(mentorRegReq.getName(),mentorRegReq.getId());
        return ResponseEntity.status(201).body(new BaseResponse("멘토 등록 성공",201));
    }
}
