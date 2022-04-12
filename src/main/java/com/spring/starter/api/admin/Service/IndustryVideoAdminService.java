package com.spring.starter.api.admin.Service;

import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.db.entity.IndustryVideo;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.IndustryVideoRepository;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class IndustryVideoAdminService {

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

    public IndustryVideo findVideo(Long videoId) {
        return industryVideoRepository.findById(videoId).orElse(null);
    }

    @Transactional
    public void updateVideo(long videoId, IndustryVideoReq industryVideoReq) {
        IndustryVideo industryVideo = industryVideoRepository.findById(videoId).orElse(null);
        Jobs findJob = jobsRepository.findByNameContaining(industryVideoReq.getJobs());
        industryVideo.change(industryVideoReq.getTitle(), findJob, industryVideoReq.getLink(), industryVideoReq.getThumbnail());
    }

    @Transactional
    public void deleteVideo(long videoId) {
        industryVideoRepository.deleteById(videoId);
    }
}
