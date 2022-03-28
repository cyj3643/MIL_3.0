package com.spring.starter.db.entity;

import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AMAMReply extends BaseEntity{
    String title;

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    Date createdAt;

    @NotNull
    String content;

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

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
    AMAM amam;
}
