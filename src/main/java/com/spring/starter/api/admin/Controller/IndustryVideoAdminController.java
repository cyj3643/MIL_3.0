package com.spring.starter.api.admin.Controller;

import com.spring.starter.api.admin.Service.IndustryVideoAdminService;
import com.spring.starter.api.request.user.IndustryVideoReq;
import com.spring.starter.api.service.S3Service;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.IndustryVideo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/admin/industry")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class IndustryVideoAdminController {

    private final S3Service s3Service;
    private final IndustryVideoAdminService industryVideoAdminService;

    @PostMapping(value = {"/thumbnail", "/thumbnail/{videoId}"})
    public ResponseEntity<? extends BaseResponse> getS3Url(@PathVariable(required = false) Long videoId, @RequestParam("images") MultipartFile multipartFile) throws IOException {
        String upload = s3Service.uploadIndustry(videoId, multipartFile);
        return ResponseEntity.status(201).body(new BaseResponse(upload, 201));
    }

    @PostMapping("/video")
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
        s3Service.deleteFile(video.getThumbnail());
        industryVideoAdminService.deleteVideo(videoId);
        return ResponseEntity.status(200).body(new BaseResponse("삭제가 완료되었습니다.", 201));
    }
}
