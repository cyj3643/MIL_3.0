package com.spring.starter.db.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.spring.starter.api.response.index.AMAMBoardDto;
import org.hibernate.annotations.CreationTimestamp;

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
public class AMAM extends BaseEntity{

	@NotNull
	String title;

	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	Date createdAt;

	@NotNull
	String content;

	@NotNull
	Long no;

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	Area area;

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	User user;

	@NotNull
	Long viewCount;

	@PrePersist
	public void prePersist() {
		this.viewCount = this.viewCount == null ? 0 : this.viewCount;
	}

	@PreUpdate
	public void preUpdate() {
		this.viewCount++;
	}

	public void modifyAMAM(String title, Area area, String content){
		this.title = title;
		this.createdAt = new Date();
		this.content = content;
		this.area = area;
	}
}
