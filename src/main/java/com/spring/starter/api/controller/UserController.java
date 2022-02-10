package com.spring.starter.api.controller;

import javax.validation.Valid;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.starter.api.request.index.AddUserReq;
import com.spring.starter.api.request.user.SingUpUserReq;
import com.spring.starter.api.response.index.FindUserRes;
import com.spring.starter.api.service.AreaService;
import com.spring.starter.api.service.UserService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.User;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserController {

	private final UserService userService;
	private final AreaService areaService;

	@PostMapping
	public ResponseEntity<String> signUpUser(@Valid @RequestBody SingUpUserReq singUpUserReq) {
		// ToDo 1. 아이디 중복 확인
		if (userService.isExistEmail(singUpUserReq.getEmail())) {
			return ResponseEntity.status(400).body("이미 존재하는 이메일입니다.");
		}

		Area area = null;
		if (singUpUserReq.getArea() != null) {
			area = areaService.nameToArea(singUpUserReq.getArea());
		}

		userService.save(singUpUserReq.toUserEntity(area));

		return ResponseEntity.status(201).body("회원가입에 성공하였습니다.");
	}


	@PostMapping("/signup")
	public ResponseEntity<? extends BaseResponse> signupUser(@Valid @RequestBody AddUserReq userReq) {
		User user = userReq.createUser();

		if (user == null) {
			return ResponseEntity.status(400).body(new BaseResponse("존재하는 아이디입니다.", 400));
		}

		return ResponseEntity.status(201).body(new FindUserRes(201, "유저를 생성했습니다.", user));
	}

}
