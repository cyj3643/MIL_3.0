package com.spring.starter.api.service;

import java.util.ArrayList;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MailService {

	private final JavaMailSender javaMailSender;

	//ToDo 현재 테스트 코드용으로 수신자를 고정했음 -> 비지니스 로직에 맞춰서 수정
	public void sendMail() {
		ArrayList<String> toUserList = new ArrayList<>();
		toUserList.add("gyxor8582@ajou.ac.kr");

		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

		simpleMailMessage.setTo(toUserList.toArray(new String[0]));
		simpleMailMessage.setSubject("test mail");
		simpleMailMessage.setText("test content");

		javaMailSender.send(simpleMailMessage);
	}

}
