package com.spring.starter.db.entity;

import java.util.LinkedList;
import java.util.List;

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

	@OneToMany(mappedBy = "subject")
	List<AreaSubject> areaSubjectList;

	public void addAreaSubject(AreaSubject areaSubject) {
		if (this.areaSubjectList == null) {
			this.areaSubjectList = new LinkedList<>();
		}
		this.areaSubjectList.add(areaSubject);
		areaSubject.setSubject(this);
	}

}
