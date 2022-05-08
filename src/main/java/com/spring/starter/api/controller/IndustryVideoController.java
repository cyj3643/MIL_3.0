package com.spring.starter.api.controller;

import com.spring.starter.api.response.IndustryVideoDto;
import com.spring.starter.api.response.index.IndustryVideoRes;
import com.spring.starter.api.service.IndustryVideoService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

import static com.spring.starter.common.util.constants.UploadConstant.Industry_BASE_URL;

@RestController
@RequiredArgsConstructor
@RequestMapping("/industry")
public class IndustryVideoController {

    private final IndustryVideoService industryVideoService;
    private final JobsRepository jobsRepository;

    @GetMapping("/all")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<IndustryVideoDto> industryVideoDtoList = industryVideoService.getAll().stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoList) {
            industryVideoDto.setThumbnail("/industryImg/" + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(200).body(new IndustryVideoRes("모든 비디오를 가져왔습니다.", 201, industryVideoDtoList));
    }

    @GetMapping("/{job}")
    public ResponseEntity getByJob(@PathVariable String job) {
        Jobs findJob = jobsRepository.findByNameContaining(job);
        Long id = findJob.getId();
        List<IndustryVideoDto> industryVideoDtoListByJob = industryVideoService.getByJob(id).stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoListByJob) {
            industryVideoDto.setThumbnail("/industryImg/" + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(200).body(new IndustryVideoRes("직업에 해당하는 비디오를 가져왔습니다.", 201, industryVideoDtoListByJob));
    }

}
