package com.spring.starter.api.controller;

import com.spring.starter.api.service.S3Service;
import com.spring.starter.common.model.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
@RequestMapping("/project")
public class ProjectController {

    private final S3Service s3Service;
    @Value("${aws.url}")
    private String awsUrl;

    @PostMapping("/thumbnail")
    public ResponseEntity<? extends BaseResponse> upload(@RequestParam("images") MultipartFile multipartFile) throws IOException{

        // base url 떼고 file path
        String upload = s3Service.upload(multipartFile);
        return ResponseEntity.status(201).body(new BaseResponse("성공적으로 업로드 했습니다!", 201));
    }
}
