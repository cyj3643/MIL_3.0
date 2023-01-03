package com.spring.starter.api.service;

import com.spring.starter.db.entity.MilSubject;
import com.spring.starter.db.repository.SubjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SubjectService {

    private final SubjectRepository subjectRepository;

    public List<MilSubject> getAllSubject() {
        return subjectRepository.findAll();
    }

    public MilSubject getSubjectDetails(Long subjectId) {
        return subjectRepository.findById(subjectId).orElse(null);
    }
}
