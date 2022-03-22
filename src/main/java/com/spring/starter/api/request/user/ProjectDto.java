package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.entity.Project;
import com.spring.starter.db.entity.ProjectFile;
import lombok.*;

import javax.validation.constraints.NotNull;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class ProjectDto {

    private Long id;

    @NotNull
    private String name;

    @NotNull
    private String maker;

    @NotNull
    private Long studentId;

    @NotNull
    private String description;

    private String jobs;

}
