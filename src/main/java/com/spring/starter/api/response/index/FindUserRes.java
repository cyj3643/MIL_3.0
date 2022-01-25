package com.spring.starter.api.response.index;

import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.User;

import lombok.Getter;

@Getter
public class FindUserRes extends BaseResponse {
	String name;
	String address;

	public FindUserRes(Integer status, String msg, User user) {
		super(msg, status);
		this.name = user.getName();
		this.address = user.getAddress();
	}
}
