package com.spring.starter.api.admin.service;

import com.spring.starter.api.admin.request.GroupMailSendReq;
import com.spring.starter.common.util.mail.MailForm;
import com.spring.starter.db.entity.Authority;
import com.spring.starter.db.entity.User;
import com.spring.starter.db.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AdminMailService {
    private final JavaMailSender javaMailSender;
    private final UserRepository userRepository;

    private void sendMail(String title, String content, String email) throws MessagingException{
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");

        MailForm mailForm = new MailForm();
        String mailContent = mailForm.getBaseMail(content);
        helper.setFrom("MIL"); //보내는사람
        helper.setTo(email); //받는사람
        helper.setSubject(title); //메일제목
        helper.setText(mailContent, true); //true넣을경우 html

        javaMailSender.send(mimeMessage);
    }
    public void sendGroupMail(GroupMailSendReq groupMailSendReq) throws MessagingException {
        String group = groupMailSendReq.getGroup();
        List<User> userList=null;

        if(group.equals("student")) userList=userRepository.findByAuthority(Authority.ROLE_USER);
        if(group.equals("mentor"))userList=userRepository.findByAuthority(Authority.ROLE_MENTOR);

        for(User user : userList){
            sendMail(groupMailSendReq.getTitle(),groupMailSendReq.getContent(),user.getEmail());
        }
    }
}
