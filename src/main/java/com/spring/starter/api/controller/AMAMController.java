package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.MentorVerfiyDto;
import com.spring.starter.api.request.user.PostamamReplyReq;
import com.spring.starter.api.request.user.PostamamReq;
import com.spring.starter.api.request.user.ModifyamamReq;
import com.spring.starter.api.response.index.AMAMBoardRes;
import com.spring.starter.api.response.index.AMAMRes;
import com.spring.starter.api.service.AMAMService;
import com.spring.starter.api.service.CertificationService;
import com.spring.starter.api.service.MailService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.data.domain.Pageable;


import javax.mail.MessagingException;
import javax.validation.Valid;
import java.util.List;


@Controller
@RequiredArgsConstructor
@RequestMapping("/amam")
public class AMAMController {
    private final AMAMService amamService;
    private final CertificationService certificationService;
    private final MailService mailService;

    @PostMapping("/board")
    public ResponseEntity<? extends BaseResponse> PostAMAM(@Valid @RequestBody PostamamReq postamamReq)
            throws MessagingException {
        List<MentorVerfiyDto> mentorUserEmailList = amamService.addAMAMAndfindMentor(postamamReq);
        mentorUserEmailList = certificationService.saveCertificationByList(mentorUserEmailList);
        mailService.sendAMAMReplyRequestMail(mentorUserEmailList);
        return ResponseEntity.status(201).body(new BaseResponse("글 작성 완료.", 201));
    }

    @GetMapping("/board")
    public ResponseEntity<? extends BaseResponse> AMAMList(@Valid Pageable pageable){
        return ResponseEntity.status(200).body(new AMAMBoardRes("글 목록 조회 완료",200,amamService.getAll(pageable)));
    }

    @GetMapping("/board/{title}")
    public ResponseEntity<? extends BaseResponse> AMAMDetatils(@Valid @PathVariable(value = "title") String title){
        return ResponseEntity.status(200).body(new AMAMRes("글 조회 완료",200,amamService.getContent(title)));
    }

    @GetMapping("/board/area/{areaname}")
    public ResponseEntity<? extends BaseResponse> AMAMAreaList(@Valid Pageable pageable, @PathVariable (value = "areaname")String areaName){
        return ResponseEntity.status(200).body(new AMAMBoardRes("글 목록 조회 완료",200,amamService.getAreaAll(areaName,pageable)));
    }

    @GetMapping("/board/search")
    public ResponseEntity<? extends BaseResponse> AMAMKeywordList(@Valid Pageable pageable, @RequestParam (value = "section") String section,
                                           @RequestParam (value = "keyword") String keyword){
        return ResponseEntity.status(200).body(new AMAMBoardRes("글 목록 조회 완료",200,amamService.getAMAMByKeword(pageable,section,keyword)));
    }

    @PutMapping("/board/{title}")
    public ResponseEntity<? extends BaseResponse> AMAMModify(@Valid @PathVariable (value = "title") String title,
                                                             @RequestBody ModifyamamReq modifyamamReq){
        if(!amamService.authCheck(title))
            return ResponseEntity.status(401).body(new BaseResponse("수정 권한이 없습니다.",401));
        amamService.updateAMAM(modifyamamReq, title);
        return ResponseEntity.status(200).body(new BaseResponse("수정 성공.",201));
    }

    @DeleteMapping("/board/{title}")
    public ResponseEntity<? extends BaseResponse> AMAMRemove(@Valid @PathVariable (value = "title") String title){
        if(!amamService.authCheck(title))
            return ResponseEntity.status(401).body(new BaseResponse("삭제 권한이 없습니다.",401));
        amamService.deleteAMAM(title);
        return ResponseEntity.status(200).body(new BaseResponse("삭제 성공",201));
    }

    @PostMapping("/board/{title}/reply/{mentor}")
    public ResponseEntity <? extends BaseResponse> AMAMReplyadd(@Valid @PathVariable(value = "title") String title,
                                            @PathVariable(value= "mentor") String mentor,
                                            @RequestBody PostamamReplyReq postamamReplyReq){
        if(certificationService.matchCodeById(mentor, postamamReplyReq.getCode())) {
            amamService.addReplyContent(title, mentor, postamamReplyReq);
            return ResponseEntity.status(201).body(new BaseResponse("답글 작성이 완료되었습니다.", 201));
        }
        else
            return ResponseEntity.status(401).body(new BaseResponse("답글 작성 권한이 없습니다.",401));
    }
}
