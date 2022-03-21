package com.spring.starter.api.response.index;

import com.spring.starter.db.entity.Project;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectRes {

    private String file;
    private String name;

    public ProjectRes(Project project, String awsUrl) {
        this.file = awsUrl + project.getProjectFileList().get(0).getFile();
        this.name = project.getName();
    }
}
