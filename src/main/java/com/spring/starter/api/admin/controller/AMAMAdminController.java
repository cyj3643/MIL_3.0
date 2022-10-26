package com.spring.starter.api.admin.controller;

import com.spring.starter.api.admin.service.AdminAMAMService;
import com.spring.starter.api.response.index.AMAMBoardRes;
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
    private final AdminAMAMService adminamamService;

    @GetMapping("/board/list")
    public ResponseEntity<? extends BaseResponse> AMAMList(@Valid Pageable pageable){
        return ResponseEntity.status(200).body(new AMAMBoardRes("글 목록 조회 완료",200,adminamamService.getAll(pageable)));
    }

    @DeleteMapping("/board/{title}")
    public ResponseEntity<? extends BaseResponse> AMAMRemove(@Valid @PathVariable(value = "title") String title){
        adminamamService.deleteAMAM(title);
        return ResponseEntity.status(200).body(new BaseResponse("삭제 성공",200));
    }
}
