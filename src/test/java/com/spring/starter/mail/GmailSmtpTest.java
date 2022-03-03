package com.spring.starter.mail;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.starter.BaseTest;
import com.spring.starter.api.service.MailService;

public class GmailSmtpTest extends BaseTest {
	private final MailService mailService;

	@Autowired
	public GmailSmtpTest(MailService mailService) {
		this.mailService = mailService;
	}

	@Test
	@DisplayName("SMTP 테스트 - 발송 테스트")
	void sendMail() {
		mailService.sendMail();
	}
}
