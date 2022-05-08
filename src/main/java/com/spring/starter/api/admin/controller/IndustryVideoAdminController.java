package com.spring.starter.api.admin.controller;

import com.spring.starter.api.admin.response.IndustryVideoAdminDto;
import com.spring.starter.api.admin.response.index.IndustryVideoAdminInfoRes;
import com.spring.starter.api.admin.response.index.IndustryVideoAdminRes;
import com.spring.starter.api.admin.service.IndustryVideoAdminService;
import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.api.service.S3Service;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.IndustryVideo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/admin/industry/video")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class IndustryVideoAdminController {

    private final S3Service s3Service;
    private final IndustryVideoAdminService industryVideoAdminService;

    @GetMapping("")
    public ResponseEntity<? extends BaseResponse> getAllVideo() {
        List<IndustryVideoAdminDto> industryVideoInfoResDtoList = industryVideoAdminService.getAll().stream().map(video -> new IndustryVideoAdminDto(video)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new IndustryVideoAdminRes("모든 비디오를 가져왔습니다.", 200, industryVideoInfoResDtoList));
    }

    @GetMapping("/{videoId}")
    public ResponseEntity<? extends BaseResponse> getVideoById(@PathVariable Long videoId) {
        IndustryVideo video = industryVideoAdminService.findVideo(videoId);
        return ResponseEntity.status(200).body(new IndustryVideoAdminInfoRes("videoId에 의해 비디오를 가져왔습니다.", 200, video));
    }


    @PostMapping(value = {"/thumbnail", "/thumbnail/{videoId}"})
    public ResponseEntity<? extends BaseResponse> postS3Url(@PathVariable(required = false) Long videoId, @RequestParam("images") MultipartFile multipartFile) throws IOException {
        String thumbnail = industryVideoAdminService.saveThumbnail(videoId, multipartFile);
//        String upload = s3Service.uploadIndustry(videoId, multipartFile);
        return ResponseEntity.status(201).body(new BaseResponse(thumbnail, 201));
    }

    @PostMapping("")
    public ResponseEntity<? extends BaseResponse> uploadVideo(@RequestBody IndustryVideoReq industryVideoReq) {
        industryVideoAdminService.saveVideo(industryVideoReq);
        return ResponseEntity.status(201).body(new BaseResponse("성공적으로 업로드 하였습니다.", 201));
    }

    @PutMapping("/{videoId}")
    public ResponseEntity<? extends BaseResponse> updateVideo(@PathVariable Long videoId, @RequestBody IndustryVideoReq industryVideoReq) {
        industryVideoAdminService.updateVideo(videoId, industryVideoReq);
        return ResponseEntity.status(201).body(new BaseResponse("수정이 완료되었습니다.", 201));
    }

    @DeleteMapping("/{videoId}")
    public ResponseEntity<? extends BaseResponse> deleteVideo(@PathVariable Long videoId) {
        IndustryVideo video = industryVideoAdminService.findVideo(videoId);
        industryVideoAdminService.deleteThumbnail(video.getThumbnail());
//        s3Service.deleteFile(video.getThumbnail());
        industryVideoAdminService.deleteVideo(videoId);
        return ResponseEntity.status(200).body(new BaseResponse("삭제가 완료되었습니다.", 201));
    }
}
