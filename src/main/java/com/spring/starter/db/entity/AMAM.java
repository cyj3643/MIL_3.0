package com.spring.starter.db.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

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
	@ManyToOne
	@JoinColumn
	Area area;

	@NotNull
	@ManyToOne
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
}
