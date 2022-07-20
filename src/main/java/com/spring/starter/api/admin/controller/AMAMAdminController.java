package com.spring.starter.api.admin.controller;

import com.spring.starter.api.response.index.AMAMBoardRes;
import com.spring.starter.api.service.AMAMService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping("/admin/amam")
public class AMAMAdminController {
    private final AMAMService amamService;

    @GetMapping("/board/area/{areaname}")
    public ResponseEntity<? extends BaseResponse> AMAMAreaList(@Valid Pageable pageable, @PathVariable (value = "areaname")String areaName){
        return ResponseEntity.status(200).body(new AMAMBoardRes("글 목록 조회 완료",200,amamService.getAreaAll(areaName,pageable)));
    }

    @DeleteMapping("/board/{title}")
    public ResponseEntity<? extends BaseResponse> AMAMRemove(@Valid @PathVariable(value = "title") String title){
        amamService.deleteAMAM(title);
        return ResponseEntity.status(200).body(new BaseResponse("삭제 성공",200));
    }
}
