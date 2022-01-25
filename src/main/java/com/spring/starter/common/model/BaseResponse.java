package com.spring.starter.common.model;

import lombok.Getter;

@Getter
public class BaseResponse{
	String msg = null;
	Integer status = null;

	public BaseResponse(String msg, Integer status) {
		this.msg = msg;
		this.status = status;
	}
}

