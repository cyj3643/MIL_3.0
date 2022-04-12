package com.spring.starter.api.admin.request;

import lombok.Getter;

import javax.validation.constraints.NotNull;

@Getter
public class MentorRegReq {
    @NotNull
    String name;

    @NotNull
    String id;
}
