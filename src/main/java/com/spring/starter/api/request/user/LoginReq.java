package com.spring.starter.api.request.user;

import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class LoginReq {
	@NotNull
	String userId;

	@NotNull
	String password;
}
