package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

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
public class Subject extends BaseEntity{

	String name;

	// TO-DO 에임즈 보고 수정

	@OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
	List<AreaSubject> areaSubjectList;
	public void addAreaSubject(AreaSubject areaSubject) {
		if (this.areaSubjectList == null) {
			this.areaSubjectList = new LinkedList<>();
		}
		this.areaSubjectList.add(areaSubject);
		//areaSubject.setSubject(this);
	}

	@OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
	List<JobsSubject> jobsSubjectList;
	public void addJobsSubject(JobsSubject jobsSubject) {
		if (this.jobsSubjectList == null) {
			this.jobsSubjectList = new LinkedList<>();
		}
		this.jobsSubjectList.add(jobsSubject);
		//jobsSubject.setSubject(this);
	}

	private String rowId;

	private String columnId;

	private String keyWord;

	private String details;

	private String tools;

	private String prerequisiteCourses;

	private String relatedCourses;

//	@OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
//	List<Project> projectList;
//	public void addProject(Project project) {
//		if (this.projectList == null) {
//			this.projectList = new LinkedList<>();
//		}
//		this.projectList.add(project);
//		project.setSubject(this);
//	}

}
