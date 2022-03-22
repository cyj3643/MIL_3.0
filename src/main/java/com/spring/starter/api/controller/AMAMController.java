package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.PostamamReq;
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
    public ResponseEntity GetAllAMAM(@Valid Pageable pageable){
        return ResponseEntity.status(201).body(amamService.get_all(pageable));
    }

    @GetMapping("/board/{title}")
    public ResponseEntity GetAMAM(@Valid @PathVariable(value = "title") String title){
        return ResponseEntity.status(201).body(amamService.get_content(title));
    }

    @GetMapping("/board/area/{areaname}")
    public ResponseEntity GetAreaAMAM(@Valid Pageable pageable, @PathVariable (value = "areaname")String areaName){
        return ResponseEntity.status(201).body(amamService.getarea_all(areaName,pageable));
    }

    @GetMapping("/board/search")
    public ResponseEntity AMAMKeywordList(@Valid Pageable pageable, @RequestParam (value = "section") String section,
                                           @RequestParam (value = "keyword") String keyword){
        return ResponseEntity.status(201).body(amamService.getAMAMByKeword(pageable,section,keyword));
    }
}
