package com.spring.starter.api.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import com.spring.starter.api.request.user.MentorVerfiyDto;
import com.spring.starter.db.entity.User;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.spring.starter.common.util.mail.MailForm;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MailService {

	private final JavaMailSender javaMailSender;

	public void sendSignUpCertificationMail(String email, String code) throws MessagingException {
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");

		MailForm mailForm = new MailForm();
		String mailContent = mailForm.getCertificationCodeMail(code);

		helper.setFrom("MIL"); //보내는사람
		helper.setTo(email); //받는사람
		helper.setSubject("[MIL] MIL 회원가입 이메일 인증코드입니다."); //메일제목
		helper.setText(mailContent, true); //true넣을경우 html

		javaMailSender.send(mimeMessage);
	}

	public void sendChangePwdCertificationMail(String email, String code) throws MessagingException {
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");

		MailForm mailForm = new MailForm();
		String mailContent = mailForm.getPwdCertificationMail(code);

		helper.setFrom("MIL"); //보내는사람
		helper.setTo(email); //받는사람
		helper.setSubject("[MIL] MIL 비밀변호 변경 이메일 인증코드입니다."); //메일제목
		helper.setText(mailContent, true); //ture넣을경우 html

		javaMailSender.send(mimeMessage);
	}

	public void sendAMAMReplyRequestMail(List<MentorVerfiyDto> mentorVerfiyDtoList) throws MessagingException {
		for(MentorVerfiyDto list : mentorVerfiyDtoList){
			MimeMessage mimeMessage = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");

			MailForm mailForm = new MailForm();
			String mailContent = mailForm.getAMAMReplyMail(list.getCode(),list.getUrl(),list.getTitle());

			helper.setFrom("MIL"); //보내는사람
			helper.setTo(list.getEmail()); //받는사람

			helper.setSubject("[MIL] MIL Mentee가 새로운 글을 등록했습니다."); //메일제목
			helper.setText(mailContent, true); //ture넣을경우 html

			javaMailSender.send(mimeMessage);
		}
	}

}
