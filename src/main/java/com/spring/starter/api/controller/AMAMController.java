package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.*;
import com.spring.starter.api.response.index.AMAMBoardRes;
import com.spring.starter.api.response.index.AMAMReplyRes;
import com.spring.starter.api.response.index.AMAMRes;
import com.spring.starter.api.service.AMAMService;
import com.spring.starter.api.service.CertificationService;
import com.spring.starter.api.service.MailService;
import com.spring.starter.api.service.UserService;
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
    private final UserService userService;
    private final CertificationService certificationService;
    private final MailService mailService;

    //AMAM

    @PostMapping("/board")
    public ResponseEntity<? extends BaseResponse> AMAMAdd(@Valid @RequestBody PostamamReq postamamReq)
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

    //AMAMReply

    @PostMapping("/board/{title}/reply/{mentor}/email")
    public ResponseEntity <? extends BaseResponse> AMAMReplyAddByEmail(@Valid @PathVariable(value = "title") String title,
                                            @PathVariable(value= "mentor") String mentor,
                                            @RequestBody PostamamEmailReplyReq postamamEmailReplyReq){
        if(!certificationService.matchCodeById(title, mentor, postamamEmailReplyReq.getCode()))
            return ResponseEntity.status(401).body(new BaseResponse("답글 작성 권한이 없습니다.",401));
        amamService.addReplyContentByEmail(title, mentor, postamamEmailReplyReq);
        return ResponseEntity.status(201).body(new BaseResponse("답글 작성이 완료되었습니다.", 201));
    }

    @PostMapping("/board/{title}/reply")
    public ResponseEntity <? extends  BaseResponse> AMAMReplyAdd(@Valid @PathVariable(value = "title") String title,
                                                                 @RequestBody PostamamReplyReq postamamReplyReq){
        if(!userService.isMentor())
            return ResponseEntity.status(401).body(new BaseResponse("답글 작성 권한이 없습니다.",401));
        amamService.addReplyContent(title, postamamReplyReq);
        return ResponseEntity.status(201).body(new BaseResponse("답글 작성이 완료되었습니다.", 201));
    }

    @GetMapping("/board/{title}/reply/{mentor}")
    public ResponseEntity <? extends  BaseResponse> AMAMReplyDetails(@Valid @PathVariable(value = "title") String title,
                                                                     @PathVariable(value="mentor") String mentor){
        return ResponseEntity.status(200).body(new AMAMReplyRes("글 조회 완료",200,amamService.getReplyContent(title, mentor)));
    }

    @PutMapping("/board/{title}/reply/{mentor}")
    public ResponseEntity <? extends  BaseResponse> AMAMReplyModify(@Valid @PathVariable(value = "title") String title,
                                                                    @PathVariable(value="mentor") String mentor,
                                                                    @RequestBody ModifyamamReq modifyamamReq){
        if(!amamService.authCheck(title))
            return ResponseEntity.status(401).body(new BaseResponse("수정 권한이 없습니다.",401));
        amamService.updateAMAMReply(modifyamamReq, title);
        return ResponseEntity.status(200).body(new BaseResponse("수정 성공.",201));
    }

    @DeleteMapping("/board/{title}/reply/{mentor}")
    public ResponseEntity <? extends  BaseResponse> AMAMReplyRemove(@Valid @PathVariable(value = "title") String title,
                                                                    @PathVariable(value="mentor") String mentor){
        if(!amamService.authCheck(title))
            return ResponseEntity.status(401).body(new BaseResponse("수정 권한이 없습니다.",401));
        amamService.deleteAMAMReply(title);
        return ResponseEntity.status(200).body(new BaseResponse("삭제 성공",201));
    }
}
