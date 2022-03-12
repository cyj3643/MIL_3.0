package com.spring.starter.api.request.user;

import lombok.Getter;

@Getter
public class VerifyCodeReq {
	String email;
	String code;
}
