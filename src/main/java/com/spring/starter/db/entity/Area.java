package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PreRemove;
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
public class Area extends BaseEntity{
	@NotNull
	String name;

	@OneToOne(mappedBy = "area")
	User user;

	@OneToMany(mappedBy = "area", cascade = CascadeType.ALL)
	List<AreaSubject> areaSubjectList;
	public void addAreaSubject(AreaSubject areaSubject) {
		if (this.areaSubjectList == null) {
			this.areaSubjectList = new LinkedList<>();
		}
		this.areaSubjectList.add(areaSubject);
		areaSubject.setArea(this);
	}

	@OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
	List<JobsSubject> jobsSubjectList;
	public void addJobsSubject(JobsSubject jobsSubject) {
		if (this.jobsSubjectList == null) {
			this.jobsSubjectList = new LinkedList<>();
		}
		this.jobsSubjectList.add(jobsSubject);
		jobsSubject.setArea(this);
	}

	@PreRemove
	void setUserNull() {
		this.user.setArea(null);
	}
}