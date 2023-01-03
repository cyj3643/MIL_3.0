package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="cil_position")
public class CilPosition extends BaseEntity{

    // SubjectConstants 참조
    Integer state;
}
