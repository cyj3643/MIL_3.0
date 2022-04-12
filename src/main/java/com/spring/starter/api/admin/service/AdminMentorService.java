package com.spring.starter.api.admin.service;

import com.spring.starter.db.entity.Authority;
import com.spring.starter.db.entity.User;
import com.spring.starter.db.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AdminMentorService {
    private final UserRepository userRepository;

    public boolean isExistUser(String mentorName, String mentorId){
        User user = userRepository.findByNameAndUserId(mentorName, mentorId).orElse(null);
        return user != null;
    }

    public void addMentor(String mentorName, String mentorId){
        User user = userRepository.findByNameAndUserId(mentorName, mentorId).orElse(null);
        user.setAuthority(Authority.ROLE_MENTOR);
        userRepository.save(user);
    }
}
