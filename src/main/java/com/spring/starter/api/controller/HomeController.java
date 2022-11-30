package com.spring.starter.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String main() throws Exception {
        System.out.println("errrrror");
        return "home";
    }

    @RequestMapping("/cil/")
    public String cilView() throws Exception {
        System.out.println("errrrror");
        return "cil";
    }

    @RequestMapping("/aam/")
    public String aamView() throws Exception {
        System.out.println("errrrror");
        return "industry";
    }
}