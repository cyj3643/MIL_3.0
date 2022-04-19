package com.spring.starter.api.admin.controller;

import com.spring.starter.api.admin.request.GroupMailSendReq;
import com.spring.starter.api.admin.service.AdminMailService;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;
import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/mail")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class MailController {
    private final AdminMailService adminMailService;

    @PostMapping("/groupmail")
    public ResponseEntity<? extends BaseResponse> mailingAll(@Valid @RequestBody GroupMailSendReq groupMailSendReq)
            throws MessagingException {
        adminMailService.sendGroupMail(groupMailSendReq);
        return ResponseEntity.status(200).body(new BaseResponse("메일 발송 완료.", 200));
    }
}
