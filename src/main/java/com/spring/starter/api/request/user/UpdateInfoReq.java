package com.spring.starter.api.request.user;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Getter
@Setter
public class UpdateInfoReq {

    @NotNull
    private String name;
    @NotNull
    private String password;
    @NotNull
    private Integer studentId;
    @NotNull
    @Email
    private String email;
    @NotNull
    private String area;

}
