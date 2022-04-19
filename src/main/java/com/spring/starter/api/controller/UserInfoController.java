package com.spring.starter.api.controller;


import com.spring.starter.api.request.user.UpdateInfoReq;
import com.spring.starter.api.response.index.InfoDto;
import com.spring.starter.api.service.UserService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/info")
@RequiredArgsConstructor
public class UserInfoController {

    private final UserService userService;

    @GetMapping(value = {"/mine", "/mine/update"})
    public ResponseEntity<? extends BaseResponse> getInfo() {
        User myInfo = userService.getMyInfo();
        return ResponseEntity.status(200).body(new InfoDto("유저 정보를 가져왔습니다.", 200, myInfo));
    }

    @PutMapping("/mine/update")
    public ResponseEntity<? extends BaseResponse> updateInfo(@Valid @RequestBody UpdateInfoReq updateInfoReq) {
        userService.changeInfo(updateInfoReq);
        return ResponseEntity.status(201).body(new BaseResponse("성공적으로 정보를 수정하였습니다.", 201));
    }
}
