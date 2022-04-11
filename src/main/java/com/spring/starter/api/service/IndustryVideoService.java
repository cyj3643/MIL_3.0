package com.spring.starter.api.service;

import com.spring.starter.db.entity.IndustryVideo;
import com.spring.starter.db.repository.IndustryVideoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IndustryVideoService {

    private final IndustryVideoRepository industryVideoRepository;

    public List<IndustryVideo> getAll() {
        return industryVideoRepository.findAll();
    }

    public List<IndustryVideo> getByJob(Long id) {
        return industryVideoRepository.findByJobsId(id);
    }
}
