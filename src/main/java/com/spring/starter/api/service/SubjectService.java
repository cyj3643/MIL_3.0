package com.spring.starter.api.service;

import com.spring.starter.db.entity.Subject;
import com.spring.starter.db.repository.SubjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SubjectService {

    private final SubjectRepository subjectRepository;

    public List<Subject> getAllSubject() {
        return subjectRepository.findAll();
    }

    public Subject getSubjectDetails(Long subjectId) {
        return subjectRepository.findById(subjectId).orElse(null);
    }
}
