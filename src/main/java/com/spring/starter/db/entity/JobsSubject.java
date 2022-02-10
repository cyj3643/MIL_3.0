package com.spring.starter.db.entity;

import javax.persistence.Entity;
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
public class JobsSubject extends BaseEntity{
	@NotNull
	@ManyToOne
	@JoinColumn
	Subject subject;

	@NotNull
	@ManyToOne
	@JoinColumn
	Jobs jobs;

	// SubjectConstants 참조
	Integer state;
}
