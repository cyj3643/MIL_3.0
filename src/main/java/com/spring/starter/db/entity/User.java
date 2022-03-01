package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User extends BaseEntity {
	@NotNull
	@Column(unique = true)
	String userId;

	@NotNull
	String name;

	@NotNull
	@Column(unique = true)
	String email;

	@NotNull
	String password;

	@NotNull
	Integer studentId;

	//	@NotNull
//	Integer state; // 0: 관리자, 1: 학생, 2: 멘토
	@Enumerated(EnumType.STRING)
	private Authority authority;

	@OneToOne
	@JoinColumn
	Area area;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	List<AMAM> amamList;
	public void addAMAM(AMAM amam) {
		if (this.amamList == null) {
			this.amamList = new LinkedList<>();
		}
		this.amamList.add(amam);
		amam.setUser(this);
	}
}
