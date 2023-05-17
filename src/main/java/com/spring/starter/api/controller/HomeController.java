package com.spring.starter.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.apache.ibatis.session.SqlSession;

import com.spring.starter.dao.cilDAO;
import com.spring.starter.dao.amamDAO;
import com.spring.starter.dao.adminDAO;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping("/")
    public String main() throws Exception {
        System.out.println("errrrror");
        return "home";
    }

    /*@RequestMapping("cil/")
    public String cilView() throws Exception {
        System.out.println("errrrror");
        return "cil";
    }*/
    @RequestMapping("cil")
    public String subjectList(Model model) {
        System.out.println("cil들어옴!~~~~~~!~!~@");
        cilDAO dao = sqlSession.getMapper(cilDAO.class);

        try {
            model.addAttribute("subjectList", dao.subjectList());
            model.addAttribute("jobList", dao.jobList());
            System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "cil";
        }
        return "cil";
    }

    @RequestMapping("aam")
    public String aamView(Model model) throws Exception {
        System.out.println("aam들어옴!~~~~~~!~!~@");
        amamDAO dao = sqlSession.getMapper(amamDAO.class);
        cilDAO cil_dao = sqlSession.getMapper(cilDAO.class);

        try {
            model.addAttribute("videoList",dao.videoList());
            model.addAttribute("jobList", cil_dao.jobList());
            System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            //return "industry";
        }
        return "industry";
    }

    /*
    * admin : 관리자 메인 페이지로 이동
    * */
    @RequestMapping("admin")
    public String adminMainList(Model model) {
        System.out.println("admin들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/main-dash";
        }
        return "admin/main-dash";
    }

    @RequestMapping("admin/curriculum")
    public String adminCurriList(Model model) {
        System.out.println("admin_curriculum들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cil_dao = sqlSession.getMapper(cilDAO.class);

        try {
            model.addAttribute("curriList", dao.curriList());
            model.addAttribute("subjectList", cil_dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/adminMain";
        }
        return "admin/adminMain";
    }

    @RequestMapping("admin/subject")
    public String adminSubjectList(Model model) {
        System.out.println("admin들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/subject";
        }
        return "admin/subject";
    }

    @RequestMapping("admin/mentor")
    public String adminMentorList(Model model) {
        System.out.println("mentor들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            model.addAttribute("mentorList", dao.mentorList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            model.addAttribute("mentorList", dao.mentorList());
            e.printStackTrace();
            return "admin/mentor2";
        }
        return "admin/mentor2";
    }

    @RequestMapping("admin/video")
    public String adminVideoList(Model model) {
        System.out.println("mentor들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            model.addAttribute("videoList", dao.videoList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/video";
        }
        return "admin/video";
    }

    @RequestMapping("admin/mail")
    public String adminMailList(Model model) {
        System.out.println("mentor들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/mail";
        }
        return "admin/mail";
    }

    /*
    * 사학과, 금융공학과 사이트 연결
    * */
    @RequestMapping("hil")
    public String hilSubjectList(Model model) {
        System.out.println("hil들어옴!~~~~~~!~!~@");
        //cilDAO dao = sqlSession.getMapper(cilDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "hil";
        }
        return "hil";
    }

    @RequestMapping("fil")
    public String filSubjectList(Model model) {
        System.out.println("fil들어옴!~~~~~~!~!~@");
        //cilDAO dao = sqlSession.getMapper(cilDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "fil";
        }
        return "fil";
    }
    /*
     * admin : 관리자 메인 페이지로 이동
     * */
    @RequestMapping("fil/admin")
    public String filAdminMainList(Model model) {
        System.out.println("fil_admin들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "fil/admin/main-dash";
        }
        return "fil/admin/main-dash";
    }

    @RequestMapping("fil/admin/curriculum")
    public String filAdminCurriList(Model model) {
        System.out.println("fil_admin_curriculum들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cil_dao = sqlSession.getMapper(cilDAO.class);

        try {
            model.addAttribute("fil_curriList", dao.curriList());
            model.addAttribute("fil_subjectList", cil_dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "fil/admin/adminMain";
        }
        return "fil/admin/adminMain";
    }

    @RequestMapping("fil/admin/subject")
    public String filAdminSubjectList(Model model) {
        System.out.println("fil_admin_subject들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "admin/subject";
        }
        return "admin/subject";
    }

    @RequestMapping("fil/admin/mail")
    public String filAdminMailList(Model model) {
        System.out.println("fil_admin_mail들어옴!~~~~~~!~!~@");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);

        try {
            //model.addAttribute("subjectList", dao.subjectList());
            //model.addAttribute("jobList", dao.jobList());
            //System.out.println("testtesttest");
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return "fil/admin/mail";
        }
        return "fil/admin/mail";
    }

}