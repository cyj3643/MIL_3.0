package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.PostamamReq;
import com.spring.starter.api.request.user.ModifyamamReq;
import com.spring.starter.api.service.AMAMService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.data.domain.Pageable;


import javax.validation.Valid;


@Controller
@RequiredArgsConstructor
@RequestMapping("/amam")
public class AMAMController {
    private final AMAMService amamService;

    @PostMapping("/board")
    public ResponseEntity<? extends BaseResponse> PostAMAM(@Valid @RequestBody PostamamReq postamamReq){
        amamService.save(postamamReq);
        return ResponseEntity.status(201).body(new BaseResponse("글 작성 완료.", 201));
    }

    @GetMapping("/board")
    public ResponseEntity AMAMList(@Valid Pageable pageable){
        return ResponseEntity.status(200).body(amamService.get_all(pageable));
    }

    @GetMapping("/board/{title}")
    public ResponseEntity AMAMDetatils(@Valid @PathVariable(value = "title") String title){
        return ResponseEntity.status(200).body(amamService.get_content(title));
    }

    @GetMapping("/board/area/{areaname}")
    public ResponseEntity AMAMAreaList(@Valid Pageable pageable, @PathVariable (value = "areaname")String areaName){
        return ResponseEntity.status(200).body(amamService.getarea_all(areaName,pageable));
    }

    @GetMapping("/board/search")
    public ResponseEntity AMAMKeywordList(@Valid Pageable pageable, @RequestParam (value = "section") String section,
                                           @RequestParam (value = "keyword") String keyword){
        return ResponseEntity.status(200).body(amamService.getAMAMByKeword(pageable,section,keyword));
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
}
