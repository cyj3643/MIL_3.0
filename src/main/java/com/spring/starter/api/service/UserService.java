package com.spring.starter.api.service;

import org.springframework.stereotype.Service;

import com.spring.starter.api.request.index.AddUserReq;
import com.spring.starter.db.entity.User;
import com.spring.starter.db.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

	private final UserRepository userRepository;

	public boolean isExistEmail(String email) {
		User byEmail = userRepository.findByEmail(email).orElse(null);
		return byEmail != null;
	}

	public void save(User toUserEntity) {
		userRepository.save(toUserEntity);
	}
}
