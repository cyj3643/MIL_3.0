package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import lombok.Setter;

@Entity
@Setter
public class Project extends BaseEntity{
	// 작품명
	@NotNull
	private String name;

	// 제작자 이름
	@NotNull
	private String maker;

	@NotNull
	private Long studentId;

	@NotNull
	private String description;

	// 연관 과목
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	private Subject subject;

	@OneToMany(mappedBy = "project", cascade = CascadeType.ALL)
	List<ProjectFile> projectFileList;
	public void addProjectFile(ProjectFile projectFile) {
		if (this.projectFileList == null) {
			this.projectFileList = new LinkedList<>();
		}
		this.projectFileList.add(projectFile);
		projectFile.setProject(this);
	}
}
