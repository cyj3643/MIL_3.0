package com.spring.starter.api.admin.request;

import lombok.Getter;

import javax.validation.constraints.NotNull;

@Getter
public class GroupMailSendReq {
    @NotNull
    String title;

    @NotNull
    String group;

    @NotNull
    String content;
}
