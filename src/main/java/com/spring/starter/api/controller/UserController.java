package com.spring.starter.api.controller;

import javax.validation.Valid;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
@RequestMapping("/user")
public class UserController {

	private final UserService userService;
	private final AreaService areaService;

	@PostMapping("/signup")
	public ResponseEntity<String> signUpUser(@Valid @RequestBody SingUpUserReq singUpUserReq) {
		if (userService.isExistEmail(singUpUserReq.getEmail()))
			return ResponseEntity.status(400).body("이미 존재하는 이메일입니다.");


		Area area = null;
		if (singUpUserReq.getArea() != null) {
			area = areaService.nameToArea(singUpUserReq.getArea());
			if (area == null)
				return ResponseEntity.status(400).body("Area의 값이 잘못됐습니다.");

		}

		// ToDo Id field add
		// ToDo 비밀번호 암호화
		// ToDo 학생 Area -> 자동화
		userService.save(singUpUserReq.toUserEntity(area));

		return ResponseEntity.status(201).body("회원가입에 성공하였습니다.");
	}

}
