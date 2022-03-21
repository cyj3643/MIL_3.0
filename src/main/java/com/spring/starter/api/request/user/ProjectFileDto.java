package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.ProjectFile;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@NoArgsConstructor
public class ProjectFileDto {

    @NotNull
    private String file;

    // 0: 이미지, 1: 유튜브
    @NotNull
    private Integer division;

    private Long projectId;

    public ProjectFileDto(ProjectFile projectFile) {
        this.file = projectFile.getFile();
        this.division = projectFile.getDivision();
        this.projectId = projectFile.getProject().getId();
    }
}
