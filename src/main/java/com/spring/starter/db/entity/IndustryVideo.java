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
public class IndustryVideo extends BaseEntity{
	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	Jobs jobs;

	@NotNull
	String title;

	@NotNull
	String thumbnail; // s3 url

	@NotNull
	String link; // youtube url

	public void change(String title, Jobs findJob, String link, String thumbnail) {
		this.title = title;
		this.jobs = findJob;
		this.link = link;
		this.thumbnail = thumbnail;
	}
}
