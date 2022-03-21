package com.spring.starter.api.request.user;

import lombok.Getter;

@Getter
public class ChangePwdReq {
	String userId;
	String password;
}
