package com.spring.starter.db.entity;

import javax.persistence.Entity;

import lombok.Builder;

@Entity
@Builder
public class User extends BaseEntity{
	String name;
	String address;
}
