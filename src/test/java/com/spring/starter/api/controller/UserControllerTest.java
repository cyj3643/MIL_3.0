package com.spring.starter.api.controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.spring.starter.BaseTest;
import com.spring.starter.api.request.index.AddUserReq;

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
	@DisplayName("유저 회원가입 (성공)")
	void signupUser() throws Exception {
		//Givne
		AddUserReq addUserReq = new AddUserReq("효택", "gyxor8582@naver.com", "a123", 201721070, 1);

		//When
		ResultActions perform = this.mockMvc.perform(
			post("/signup").contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
				.content(this.objectMapper.writeValueAsString(addUserReq)));

		//Then
		perform.andExpect(status().isCreated())
			.andExpect(jsonPath("msg").value("유저를 생성했습니다."));
	}
}