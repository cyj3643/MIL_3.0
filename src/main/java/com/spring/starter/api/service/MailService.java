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
