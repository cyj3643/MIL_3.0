package com.spring.starter.api.request.user;

import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Setter
public class MentorVerfiyDto {
    String email;

    String code;

    String url;
}
