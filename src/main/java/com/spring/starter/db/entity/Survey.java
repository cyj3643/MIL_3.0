package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@NotNull
public class Survey extends BaseEntity{
    String name;
    String graduate;
    String company;
    String question1;
    String question2;
    String question3;
    String question4;
    String question5;
    String question6;
    String question7;
    String question8;
    String question9;
    String question10;
    String question11;
    String question12;
    String question13;
}
