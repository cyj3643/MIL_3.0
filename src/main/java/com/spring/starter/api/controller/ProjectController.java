package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.ProjectDto;
import com.spring.starter.api.response.ProjectResDto;
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
import java.util.List;
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
    public ResponseEntity<? extends BaseResponse> projectAll() {
        List<ProjectResDto> projectResDtoList = projectService.getAllProject().stream().map(project -> new ProjectResDto(project)).collect(Collectors.toList());
        for (ProjectResDto projectResDto : projectResDtoList) {
            projectResDto.setFile(awsUrl + projectResDto.getFile());
        }
        return ResponseEntity.status(201).body(new ProjectRes("모든 프로젝트를 가져왔습니다.", 201, projectResDtoList));
    }

    @GetMapping("/{job}")
    public ResponseEntity<? extends BaseResponse> projectByJob(@PathVariable String job) {
        Jobs findJob = jobsRepository.findByNameContaining(job);
        List<ProjectResDto> projectResDtoListByJob = projectService.getProjectByJobs(findJob.getId()).stream().map(project -> new ProjectResDto(project)).collect(Collectors.toList());
        for (ProjectResDto projectResDto : projectResDtoListByJob) {
            projectResDto.setFile(awsUrl + projectResDto.getFile());
        }
        return ResponseEntity.status(201).body(new ProjectRes("직업에 해당하는 프로젝트를 가져왔습니다.", 201, projectResDtoListByJob));
    }

    @PostMapping("/thumbnail")
    public ResponseEntity<? extends BaseResponse> thumbnail(@RequestParam("images") MultipartFile multipartFile) throws IOException {
        // base url 떼고 file path
        String upload = s3Service.upload(multipartFile);
        return ResponseEntity.status(201).body(new BaseResponse(upload, 201));
    }

    @PostMapping("/upload")
    public ResponseEntity<? extends BaseResponse> upload(@Valid @RequestBody ProjectDto projectDto) {
        projectService.saveProject(projectDto);
        return ResponseEntity.status(201).body(new BaseResponse("업로드를 성공하였습니다.", 201));
    }
}
