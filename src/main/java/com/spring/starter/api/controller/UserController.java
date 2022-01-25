package com.spring.starter.api.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.starter.api.request.index.AddUserReq;
import com.spring.starter.api.response.index.FindUserRes;
import com.spring.starter.api.service.UserService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserController {

	private final UserService userService;

	@GetMapping
	public ResponseEntity<String> displayUserInfo(@RequestParam String name, @RequestParam String address) {
		StringBuilder sb = new StringBuilder();
		String userInfo = sb.append(name)
			.append("님의 주소는 ")
			.append(address)
			.append("입니다.")
			.toString();

		return ResponseEntity.status(200).body(userInfo);
	}

	@PostMapping("/signup")
	public ResponseEntity<? extends BaseResponse> signupUser(@RequestBody AddUserReq userReq) {
		User user = userService.createUser(userReq);

		if (user == null) {
			return ResponseEntity.status(404).body(new BaseResponse("존재하는 아이디입니다.", 404));
		}

		return ResponseEntity.status(201).body(new FindUserRes(201, "유저를 생성했습니다.", user));
	}

}
