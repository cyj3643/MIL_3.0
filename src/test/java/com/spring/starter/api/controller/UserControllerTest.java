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