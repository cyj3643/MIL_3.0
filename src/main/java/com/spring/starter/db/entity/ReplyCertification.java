package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.Entity;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class ReplyCertification extends BaseEntity{
    String title;
    String code;
    String email;
}
