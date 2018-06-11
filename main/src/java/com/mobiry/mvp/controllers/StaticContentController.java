package com.mobiry.mvp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.net.UnknownHostException;

@Controller
public class StaticContentController {

    @PostConstruct
    public void hello() {
        System.out.println("hello<<<<<<<<<<<<<+=======\\================");
    }

    @RequestMapping(path = "/")
    public ModelAndView processMainPage() throws UnknownHostException {

        ModelAndView mv = new ModelAndView("test");


        return mv.addObject("instance", InetAddress.getLocalHost().getHostName());
    }

    @RequestMapping(path = "/add/{value}")
    public ModelAndView addToSession(@PathVariable String value, HttpSession session) throws UnknownHostException {
        session.setAttribute("key", value);
        return processMainPage();
    }
}
