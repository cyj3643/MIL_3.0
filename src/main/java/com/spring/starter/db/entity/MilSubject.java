package com.spring.starter.db.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.LinkedList;
import java.util.List;


@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="mil_subject")
public class MilSubject extends BaseEntity{
    String name;

    @OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
    List<AreaSubject> areaSubjectList;
    public void addAreaSubject(AreaSubject areaSubject) {
        if (this.areaSubjectList == null) {
            this.areaSubjectList = new LinkedList<>();
        }
        this.areaSubjectList.add(areaSubject);
        areaSubject.setSubject(this);
    }

    @OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
    List<JobsSubject> jobsSubjectList;
    public void addJobsSubject(JobsSubject jobsSubject) {
        if (this.jobsSubjectList == null) {
            this.jobsSubjectList = new LinkedList<>();
        }
        this.jobsSubjectList.add(jobsSubject);
        jobsSubject.setSubject(this);
    }
    private String code;

    private int rowId;

    private int colId;

    private String keyword;

    private String detail;

    private String tool;

    private String prerequisiteCourses;

    private String relateSubject;
}
