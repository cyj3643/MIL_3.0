package com.spring.starter.api.service;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.spring.starter.db.entity.IndustryVideo;
import com.spring.starter.db.repository.IndustryVideoRepository;
import com.spring.starter.db.repository.ProjectFileRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.util.UUID;

@Service
@Slf4j
@RequiredArgsConstructor
public class S3Service {

    private final IndustryVideoRepository industryVideoRepository;
    private final ProjectFileRepository projectFileRepository;
    private AmazonS3 S3Client;

    @Value("${cloud.aws.credentials.access-key}")
    private String accessKey;

    @Value("${cloud.aws.credentials.secret-key}")
    private String secretKey;

    @Value("${cloud.aws.s3.bucket}")
    private String bucket;

    @Value("${cloud.aws.region.static}")
    private String region;

    @PostConstruct
    public void setS3Client() {
        // 자격증명 객체를 얻는다.
        AWSCredentials credentials = new BasicAWSCredentials(this.accessKey, this.secretKey);

        // 자격증명을 통해 S3 Client 를 가져온다.
        S3Client = AmazonS3ClientBuilder.standard()
                .withRegion(this.region)
                .withCredentials(new AWSStaticCredentialsProvider(credentials))
                .build();
    }

    public String uploadIndustry(Long videoId, MultipartFile file) throws IOException {
        if (videoId != null) {
            IndustryVideo findIndustry = industryVideoRepository.findById(videoId).orElse(null);
            String thumbnail = findIndustry.getThumbnail();
            if (S3Client.doesObjectExist(bucket, thumbnail)) {
                S3Client.deleteObject(bucket, thumbnail);
            }
        }
        String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

        ObjectMetadata metadata = new ObjectMetadata();
        metadata.setContentType(file.getContentType());
        S3Client.putObject(new PutObjectRequest(bucket, fileName, file.getInputStream(), metadata)
                .withCannedAcl(CannedAccessControlList.PublicRead));
        String substring = fileName.substring(fileName.lastIndexOf("/") + 1);
        return substring;
    }

    public String uploadProject(Long projectId, MultipartFile file) throws IOException {
        if (projectId != null) {
            String findProject = projectFileRepository.findById(projectId).orElse(null).getFile();
            if (S3Client.doesObjectExist(bucket, findProject)) {
                S3Client.deleteObject(bucket, findProject);
            }
        }
        String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

        ObjectMetadata metadata = new ObjectMetadata();
        metadata.setContentType(file.getContentType());
        S3Client.putObject(new PutObjectRequest(bucket, fileName, file.getInputStream(), metadata)
                .withCannedAcl(CannedAccessControlList.PublicRead));
        String substring = fileName.substring(fileName.lastIndexOf("/") + 1);
        return substring;
    }

    public void deleteFile(String file) {
        S3Client.deleteObject(bucket, file);
    }

}
