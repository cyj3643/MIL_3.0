package com.spring.starter.api.service;

import com.spring.starter.api.request.user.MentorVerfiyDto;
import com.spring.starter.db.entity.ReplyCertification;
import com.spring.starter.db.repository.ReplyCertificationRepository;
import com.spring.starter.db.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.starter.common.util.RandomCodeUtil;
import com.spring.starter.db.entity.Certification;
import com.spring.starter.db.repository.CertificationRepository;

import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Transactional
public class CertificationService {

	private final CertificationRepository certificationRepository;
	private final ReplyCertificationRepository replyCertificationRepository;
	private final UserRepository userRepository;

	public String saveCertification(String email) {
		Certification byEmail = certificationRepository.findByEmail(email);
		String code = RandomCodeUtil.makeRandomCode(6);
		if (byEmail == null)
			byEmail = new Certification(code, email);
		else
			byEmail.setCode(code);
		certificationRepository.save(byEmail);
		return code;
	}

	public boolean matchCode(String email, String code) {
		Certification byEmail = certificationRepository.findByEmail(email);
		if (byEmail == null || !byEmail.getCode().equals(code))
			return false;
		return true;
	}

	public List<MentorVerfiyDto> saveCertificationByList(List<MentorVerfiyDto> mentorVerfiyDtoList){
		for(MentorVerfiyDto list : mentorVerfiyDtoList){
			String code = RandomCodeUtil.makeRandomCode(6);
			replyCertificationRepository.save(ReplyCertification.builder()
					.title(list.getTitle())
					.email(list.getEmail())
					.code(code)
					.build());
			list.setCode(code);
		}
		return mentorVerfiyDtoList;
	}

	public boolean matchCodeById(String title, String userId, String code){
		ReplyCertification byId = replyCertificationRepository.findByCode(code);
		if (byId == null || !byId.getCode().equals(code))
			return false;
		if (!title.equals(replyCertificationRepository.findByCode(code).getTitle()))
			return false;
		if (!byId.getEmail().equals(userRepository.findByUserId(userId).orElse(null).getEmail()))
			return false;
		return true;
	}
}
