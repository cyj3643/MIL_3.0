package com.spring.starter.api.controller;


import com.spring.starter.api.response.index.InfoDto;
import com.spring.starter.api.service.UserService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/info")
@RequiredArgsConstructor
public class UserInfoController {

    private final UserService userService;

    @GetMapping("/mine")
    public ResponseEntity<? extends BaseResponse> getInfo() {
        User myInfo = userService.getMyInfo();
        return ResponseEntity.status(200).body(new InfoDto("유저 정보를 가져왔습니다.", 200, myInfo));
    }
}
