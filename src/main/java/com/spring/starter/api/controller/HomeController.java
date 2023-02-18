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
}