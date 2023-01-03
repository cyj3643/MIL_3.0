package com.spring.starter.db.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
public class AreaSubject extends BaseEntity{
	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	MilSubject subject;

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	Area area;

	// SubjectConstants 참조
	Integer state;

	private String borderColor;

	private String backgroundColor;

}
