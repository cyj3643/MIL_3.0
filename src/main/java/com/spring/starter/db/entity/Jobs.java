package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
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
public class Jobs extends BaseEntity{
	@NotNull
	String name;

	@OneToMany(mappedBy = "jobs", cascade = CascadeType.ALL)
	List<JobsSubject> jobsSubjectList;
	public void addJobsSubject(JobsSubject jobsSubject) {
		if (this.jobsSubjectList == null) {
			this.jobsSubjectList = new LinkedList<>();
		}
		this.jobsSubjectList.add(jobsSubject);
		jobsSubject.setJobs(this);
	}
}
