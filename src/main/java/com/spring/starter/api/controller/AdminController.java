package com.spring.starter.api.controller;

import com.spring.starter.api.response.SubjectDto;
import com.spring.starter.api.response.index.SubjectDetailsRes;
import com.spring.starter.api.response.index.SubjectRes;
import com.spring.starter.api.service.SubjectService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.dao.adminDAO;
import com.spring.starter.dao.cilDAO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RestController
@RequiredArgsConstructor
public class AdminController {

    private final SubjectService subjectService;

    @Autowired
    private SqlSession sqlSession;

    @ResponseBody
    @RequestMapping(value="admin/curriculum/delete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteCurriculum(Model model, int page_id)
    {
        System.out.println("delete curriculum in"+page_id);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.deleteCurriculum(page_id);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("curriList", dao.curriList());
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectInfo",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map getSubjectInfo(Model model, String code)
    {
        System.out.println("in"+ code);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectDetailList",dao.subjectDetailList(code));
        //result.put("subjectPreList",dao.subjectPreList(code));
        //.put("subjectDetailCoreList",dao.subjectDetailCoreList(subject));
        //model.addAttribute("coreYN", dao.subjectDetailCoreList(subject));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/mentor/update",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateMentor(Model model, int id,String name,String industry_name,String email, String area)
    {
        System.out.println("mentor update in"+id);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.updateMentor(id,name,industry_name,email,area);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/mentor/add",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addMentor(Model model, String name, String industry_name,String email, String area)
    {
        System.out.println("mentor add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addMentor(name,industry_name,email,area);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/video/detail",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map videoDetailList(Model model, int id)
    {
        System.out.println("video detailList in"+id);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("videoDetailList", dao.videoDetailList(id));
        //result.put("videoList", dao.mentorList());
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/video/update",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateVideo(Model model, int id,String job_name,String video_title,String thumbnail_url, String video_link,String jobs_id)
    {
        System.out.println("video update in"+id);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.updateVideo(id,job_name,video_title,thumbnail_url,video_link,jobs_id);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("videoDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/video/add",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addVideo(Model model, String job_name,String video_title,String thumbnail_url, String video_link,String jobs_id)
    {
        System.out.println("video add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addVideo(job_name,video_title,thumbnail_url,video_link,jobs_id);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }
    /*
    @ResponseBody
    @RequestMapping(value="/cil/track",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectTrackList(Model model, int page_id)
    {
        System.out.println("in"+page_id);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectTrackList",dao.subjectTrackList(page_id));
        return result;
    }

    @GetMapping("/cil/subject")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<SubjectDto> collect = subjectService.getAllSubject().stream().map(subject -> new SubjectDto(subject)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new SubjectRes("모든 과목을 불러왔습니다", 200, collect));
    }

    @GetMapping("/cil/subject/{subjectId}")
    public ResponseEntity<? extends BaseResponse> getDetails(@PathVariable Long subjectId) {
        return ResponseEntity.status(200).body(new SubjectDetailsRes("과목 상세정보를 불러왔습니다.", 200, subjectService.getSubjectDetails(subjectId)));
    }

    @RequestMapping("/cil/test")
    public String callView() throws Exception {
        System.out.println("test");
        return "home";
    }*/
/*
    @GetMapping("cil")
    public List<Board> boardList(HttpServletRequest request, @ModelAttribute Board board) throws Exception {
        return this.boardService.selectBoardList(request, board);
    }*/

}

