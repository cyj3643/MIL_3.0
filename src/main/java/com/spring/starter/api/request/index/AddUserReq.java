package com.spring.starter.api.request.index;


import javax.validation.constraints.NotNull;

import com.spring.starter.db.entity.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AddUserReq {
	@NotNull(message = "name이 null이면 안됩니다.")
	String name;

	@NotNull
	String email;

	@NotNull
	String password;

	@NotNull
	Integer student_id;

	@NotNull
	Integer state; // 0: 관리자, 1: 학생, 2: 멘토

	public User createUser() {
		return User.builder()
			.name(name)
			.email(email)
			.password(password)
			.state(state)
			.student_id(student_id)
			.build();
	}
}
