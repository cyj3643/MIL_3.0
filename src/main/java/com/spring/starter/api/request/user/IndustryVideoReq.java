package com.spring.starter.api.request.user;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
public class IndustryVideoReq {

    @NotNull
    private String jobs;

    @NotNull
    private String title;

    @NotNull
    private String thumbnail; // s3 url

    @NotNull
    private String link; // youtube url
}
