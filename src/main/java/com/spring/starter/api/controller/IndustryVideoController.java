package com.spring.starter.api.controller;

import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.api.response.IndustryVideoDto;
import com.spring.starter.api.response.index.IndustryVideoRes;
import com.spring.starter.api.service.IndustryVideoService;
import com.spring.starter.api.service.S3Service;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequiredArgsConstructor
@RequestMapping("/industry")
public class IndustryVideoController {

    private final IndustryVideoService industryVideoService;
    private final S3Service s3Service;
    private final JobsRepository jobsRepository;
    @Value("${aws.url}")
    private String awsUrl;

    @PostMapping("/thumbnail")
    public ResponseEntity<? extends BaseResponse> getS3Url(@RequestParam("images") MultipartFile multipartFile) throws IOException {
        String upload = s3Service.upload(multipartFile);
        return ResponseEntity.status(201).body(new BaseResponse(upload, 201));
    }

    @PostMapping("/video")
    public ResponseEntity<? extends BaseResponse> uploadVideo(@RequestBody IndustryVideoReq industryVideoReq) {
        industryVideoService.saveVideo(industryVideoReq);
        return ResponseEntity.status(201).body(new BaseResponse("성공적으로 업로드 하였습니다.", 201));
    }

    @GetMapping("/all")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<IndustryVideoDto> industryVideoDtoList = industryVideoService.getAll().stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoList) {
            industryVideoDto.setThumbnail(awsUrl + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(201).body(new IndustryVideoRes("모든 비디오를 가져왔습니다.", 201, industryVideoDtoList));
    }

    @GetMapping("/{job}")
    public ResponseEntity getByJob(@PathVariable String job) {
        Jobs findJob = jobsRepository.findByNameContaining(job);
        Long id = findJob.getId();
        List<IndustryVideoDto> industryVideoDtoListByJob = industryVideoService.getByJob(id).stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoListByJob) {
            industryVideoDto.setThumbnail(awsUrl + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(201).body(new IndustryVideoRes("직업에 해당하는 비디오를 가져왔습니다.", 201, industryVideoDtoListByJob));
    }
}
