package com.spring.starter.api.request.user;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.Authority;
import com.spring.starter.db.entity.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class SingUpUserReq {
	@NotNull
	String userId;

	@Email
	@NotNull
	String email;

	@NotNull
	String password;

	@NotNull
	String name;

	@NotNull
	Integer studentId;

//	@NotNull
//	Integer state;
	@Enumerated(EnumType.STRING)
	private Authority authority;

	String area;

	public User toUserEntity(Area area, String encode) {
		return User.builder()
			.name(name)
			.email(email)
			.password(encode)
			.authority(authority)
			.studentId(studentId)
			.area(area)
			.userId(userId)
			.build();
	}
}
