package com.spring.starter.api.controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.spring.starter.BaseTest;

@DisplayName("User Controller Test")
class UserControllerTest extends BaseTest {

	@Test
	@DisplayName("유저 정보를 스트링으로 반환(성공)")
	void displayUserInfo() throws Exception {
		//Given
		String name = "효택";
		String address = "경기도 어딘가";

		//When
		ResultActions perform = this.mockMvc.perform(
			MockMvcRequestBuilders.get("/").param("name", name).param("address", address));

		//Then
		perform.andExpect(status().isOk())
			.andExpect(content().string("효택님의 주소는 경기도 어딘가입니다."));
	}

	@Test
	void signupUser() {
	}
}