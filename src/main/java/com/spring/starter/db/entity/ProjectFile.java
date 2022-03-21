package com.spring.starter.db.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class ProjectFile extends BaseEntity{
	// 이미지가 될 수도, 유튜브 링크가 될 수도
	@NotNull
	private String file;

	// 0: 이미지, 1: 유튜브
	@NotNull
	private Integer division;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	private Project project;

}
