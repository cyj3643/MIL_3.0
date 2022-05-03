package com.spring.starter.api.admin.service;

import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.db.entity.IndustryVideo;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.IndustryVideoRepository;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import static com.spring.starter.common.util.constants.UploadConstant.Industry_BASE_URL;


@Service
@RequiredArgsConstructor
public class IndustryVideoAdminService {

    private final IndustryVideoRepository industryVideoRepository;
    private final JobsRepository jobsRepository;

    public String saveThumbnail(Long videoId, MultipartFile multipartFile) throws IOException {
        String basePath = Industry_BASE_URL;
        String fileName = UUID.randomUUID() + "_" + multipartFile.getOriginalFilename();
        String filePath = basePath + fileName;
        File dest = new File(filePath);
        multipartFile.transferTo(dest);

        if (videoId != null) {
            IndustryVideo industryVideo = industryVideoRepository.findById(videoId).orElse(null);
            String thumbnail = industryVideo.getThumbnail();
            File deleteFile = new File(thumbnail);
            deleteFile.delete();
        }
        return fileName;
    }

    public Long saveVideo(IndustryVideoReq industryVideoReq) {
        String jobs = industryVideoReq.getJobs();
        Jobs findJob = jobsRepository.findByNameContaining(jobs);
        IndustryVideo industryVideo = new IndustryVideo();
        industryVideo.setJobs(findJob);
        BeanUtils.copyProperties(industryVideoReq, industryVideo, "jobs");
        IndustryVideo save = industryVideoRepository.save(industryVideo);
        return save.getId();
    }

    public void deleteThumbnail(String thumbnail) {
        File file = new File(Industry_BASE_URL + "/" + thumbnail);
        file.delete();
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

    public List<IndustryVideo> getAll() {
        return industryVideoRepository.findAll();
    }
}
