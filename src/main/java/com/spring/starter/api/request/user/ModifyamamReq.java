package com.spring.starter.api.request.user;

import lombok.Getter;

import javax.validation.constraints.NotNull;

@Getter
public class ModifyamamReq {
    @NotNull
    String title;

    @NotNull
    String area;

    @NotNull
    String content;
}
