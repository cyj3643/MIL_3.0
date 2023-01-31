package com.spring.starter.api.controller;

import com.spring.starter.api.response.IndustryVideoDto;
import com.spring.starter.api.response.index.IndustryVideoRes;
import com.spring.starter.api.service.IndustryVideoService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Jobs;
import com.spring.starter.db.repository.JobsRepository;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.spring.starter.dao.amamDAO;


@RestController
@RequiredArgsConstructor
@RequestMapping("/industry")
public class IndustryVideoController {

    private final IndustryVideoService industryVideoService;
    private final JobsRepository jobsRepository;

    @Autowired
    private SqlSession sqlSession;

    @GetMapping("/all")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<IndustryVideoDto> industryVideoDtoList = industryVideoService.getAll().stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoList) {
            industryVideoDto.setThumbnail("/industryImg/" + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(200).body(new IndustryVideoRes("모든 비디오를 가져왔습니다.", 201, industryVideoDtoList));
    }

    @GetMapping("/{job}")
    public ResponseEntity getByJob(@PathVariable String job) {
        Jobs findJob = jobsRepository.findByNameContaining(job);
        Long id = findJob.getId();
        List<IndustryVideoDto> industryVideoDtoListByJob = industryVideoService.getByJob(id).stream().map(video -> new IndustryVideoDto(video)).collect(Collectors.toList());
        for (IndustryVideoDto industryVideoDto : industryVideoDtoListByJob) {
            industryVideoDto.setThumbnail("/industryImg/" + industryVideoDto.getThumbnail());
        }
        return ResponseEntity.status(200).body(new IndustryVideoRes("직업에 해당하는 비디오를 가져왔습니다.", 201, industryVideoDtoListByJob));
    }

    @ResponseBody
    @RequestMapping(value="/aam/video",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map videoView(Model model, String videoCode)
    {
        System.out.println("in"+videoCode);
        amamDAO dao = sqlSession.getMapper(amamDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("getVideoCode",dao.getVideoCode(videoCode));
        return result;
    }

}
