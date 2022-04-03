package com.spring.starter.api.service;

import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.db.entity.IndustryVideo;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.IndustryVideoRepository;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IndustryVideoService {

    private final IndustryVideoRepository industryVideoRepository;
    private final JobsRepository jobsRepository;

    public Long saveVideo(IndustryVideoReq industryVideoReq) {
        String jobs = industryVideoReq.getJobs();
        Jobs findJob = jobsRepository.findByNameContaining(jobs);
        IndustryVideo industryVideo = new IndustryVideo();
        industryVideo.setJobs(findJob);
        BeanUtils.copyProperties(industryVideoReq, industryVideo, "jobs");
        IndustryVideo save = industryVideoRepository.save(industryVideo);
        return save.getId();
    }

    public List<IndustryVideo> getAll() {
        return industryVideoRepository.findAll();
    }

    public List<IndustryVideo> getByJob(Long id) {
        return industryVideoRepository.findByJobsId(id);
    }
}
