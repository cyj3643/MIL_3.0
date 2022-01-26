package com.spring.starter.api.request.index;


import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AddUserReq {
	@NotNull(message = "name이 null이면 안됩니다.")
	String name;

	@NotNull(message = "address가 null이면 안됩니다.")
	String address;
}
