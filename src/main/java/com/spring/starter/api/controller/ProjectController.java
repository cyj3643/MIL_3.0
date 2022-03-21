package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.ProjectDto;
import com.spring.starter.api.request.user.ProjectFileDto;
import com.spring.starter.api.response.index.ProjectRes;
import com.spring.starter.api.service.ProjectService;
import com.spring.starter.api.service.S3Service;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.stream.Collectors;

@RestController
@RequiredArgsConstructor
@RequestMapping("/project")
public class ProjectController {

    private final S3Service s3Service;
    private final ProjectService projectService;
    private final JobsRepository jobsRepository;
    @Value("${aws.url}")
    private String awsUrl;

    @GetMapping("/all")
    public ResponseEntity projectAll() {
        return ResponseEntity.ok(projectService.getAllProject().stream().map(file -> new ProjectRes(file, awsUrl)).collect(Collectors.toList()));
    }

    @GetMapping("/{job}")
    public ResponseEntity projectByJob(@PathVariable String job) {
        Jobs findJob = jobsRepository.findByNameContaining(job);
        return ResponseEntity.ok(projectService.getProjectByJobs(findJob.getId()).stream().map(file -> new ProjectRes(file, awsUrl)).collect(Collectors.toList()));
    }

    @PostMapping("/thumbnail/{id}")
    public ResponseEntity<? extends BaseResponse> thumbnail(@RequestParam("images") MultipartFile multipartFile, @PathVariable Long id) throws IOException {
        // base url 떼고 file path
        String upload = s3Service.upload(multipartFile);
        ProjectFileDto projectFileDto = new ProjectFileDto();
        projectFileDto.setFile(upload);
        projectFileDto.setDivision(0);
        projectFileDto.setProjectId(id);
        projectService.saveProjectFile(projectFileDto);

        return ResponseEntity.status(201).body(new BaseResponse("성공적으로 업로드 했습니다!", 201));
    }

    @PostMapping("/upload")
    public ResponseEntity upload(@Valid @RequestBody ProjectDto projectDto) {
        Long saveProject = projectService.saveProject(projectDto);
        return ResponseEntity.ok(saveProject);
    }
}
