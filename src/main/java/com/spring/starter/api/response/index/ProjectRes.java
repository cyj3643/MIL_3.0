package com.spring.starter.api.response.index;

import com.spring.starter.api.response.ProjectResDto;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ProjectRes extends BaseResponse {

    private List<ProjectResDto> projectDtoList;

    public ProjectRes(String msg, Integer status, List<ProjectResDto> projectDtoList) {
        super(msg, status);
        this.projectDtoList = projectDtoList;
    }
}
