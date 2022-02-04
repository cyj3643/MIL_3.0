package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
	String name;

	@NotNull
	String email;

	@NotNull
	String password;

	@NotNull
	Integer student_id;

	@NotNull
	Integer state; // 0: 관리자, 1: 학생, 2: 멘토

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
