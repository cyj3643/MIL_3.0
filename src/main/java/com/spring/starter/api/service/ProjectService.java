package com.spring.starter.api.service;

import com.spring.starter.api.request.user.ProjectDto;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.entity.Project;
import com.spring.starter.db.entity.ProjectFile;
import com.spring.starter.db.repository.JobsRepository;
import com.spring.starter.db.repository.ProjectFileRepository;
import com.spring.starter.db.repository.ProjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.spring.starter.common.util.constants.ProjectFileConstant.IMAGE_FILE;

@Service
@RequiredArgsConstructor
public class ProjectService {

    private final ProjectRepository projectRepository;
    private final ProjectFileRepository projectFileRepository;
    private final JobsRepository jobsRepository;

    // 모든 썸네일 가져오기
    public List<Project> getAllProject() {
        return projectRepository.findAll();
    }

    // 직업에 의해 썸네일 가져오기
    public List<Project> getProjectByJobs(Long jobId) {
        return projectRepository.findByJobsId(jobId);
    }

    public Long saveProject(ProjectDto projectDto) {
        Project project = new Project();
        ProjectFile projectFile = new ProjectFile(projectDto.getThumbnailLink(), IMAGE_FILE, null);
        Jobs findJob = jobsRepository.findByNameContaining(projectDto.getJobs());
        project.setJobs(findJob);
        project.addProjectFile(projectFile);
        BeanUtils.copyProperties(projectDto, project, "jobs");
        Project saveProject = projectRepository.save(project);
        return saveProject.getId();
    }

    public Project findProject(Long id) {
        Project project = projectRepository.findById(id).orElse(null);
        return project;
    }
}
