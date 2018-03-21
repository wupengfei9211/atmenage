package com.at.Controller;

import com.at.pojo.tUser;
import com.at.service.logservice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/logControl")
public class logControl {
    @Resource
    private logservice logService;
    @RequestMapping("/login")
    public String checkLogin(tUser tuser, Model model){
       if(logService.checkLogin(tuser)!=0){
           model.addAttribute("tuser",tuser);
           return ("/home.jsp");
       }
       return ("/log.jsp");
    }
}
