package com.spring.starter.db.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.*;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter @Getter @Builder
public class Certification extends BaseEntity{
	String code;
	String email;
}
