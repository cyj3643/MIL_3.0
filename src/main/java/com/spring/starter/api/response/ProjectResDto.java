package com.spring.starter.api.response;

import com.spring.starter.db.entity.Project;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectResDto {

    private Long id;
    private String file;
    private String name;

    public ProjectResDto(Project project) {
        this.id = project.getId();
        this.file = String.valueOf(project.getProjectFileList().get(0));
        this.name = project.getName();
    }
}
