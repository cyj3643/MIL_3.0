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

	public User createUser(AddUserReq userReq) {
		User check = userRepository.findByName(userReq.getName()).orElse(null);
		if (check != null) {
			return null;
		}

		User newUser = User.builder().name(userReq.getName()).build();
		return userRepository.save(newUser);
	}

	public boolean isExistEmail(String email) {
		User byEmail = userRepository.findByEmail(email);
		return byEmail != null;
	}
}
