package com.spring.starter.api.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.starter.common.util.RandomCodeUtil;
import com.spring.starter.db.entity.Certification;
import com.spring.starter.db.repository.CertificationRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class CertificationService {

	private final CertificationRepository certificationRepository;

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

}
