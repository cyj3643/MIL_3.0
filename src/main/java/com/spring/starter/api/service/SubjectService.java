package com.spring.starter.api.service;

import com.spring.starter.db.entity.FeSubject;
import com.spring.starter.db.repository.SubjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SubjectService {

    private final SubjectRepository subjectRepository;

    public List<FeSubject> getAllSubject() {
        return subjectRepository.findAll();
    }

    public FeSubject getSubjectDetails(Long subjectId) {
        return subjectRepository.findById(subjectId).orElse(null);
    }
}
