package com.spring.starter.db.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

// 비밀번호 찾기를 위한 엔티티
@Entity
public class FindPwd extends BaseEntity{
	String code;

	@OneToOne
	@JoinColumn
	User user;
}
