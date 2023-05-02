package com.xiaoxin.controller;

import com.xiaoxin.biz.LoginBiz;
import com.xiaoxin.model.User;
import com.xiaoxin.utils.CookieUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    LoginBiz loginBiz;

    @GetMapping("/users/register")
    public String register(){
        return "login/register";
    }

    @PostMapping("/users/doregister")
    public String doregister(Model model,
                             HttpServletResponse response,
                             @RequestParam("name") String name,
                             @RequestParam("password") String password,
                             @RequestParam("email") String email){
        try {
            User user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setEmail(email);
            String t = loginBiz.register(user);
            CookieUtils.writeCookie("t",t,response);
            return "redirect:/index";
        } catch (Exception e) {
            model.addAttribute("error",e.getMessage());
            return "404";
        }

    }


    //登录
    @GetMapping("/users/login")
    public String login(){
        return "login/login";
    }
    //执行登录
    @PostMapping("/users/dologin")
    public String dologin(HttpServletResponse response,
                          Model model,
                          @RequestParam("email") String email,
                          @RequestParam("password") String password
                                        ){
        try {
            String t = loginBiz.login(email, password);
            CookieUtils.writeCookie("t",t,response);
            return "redirect:/index";
        } catch (Exception e) {
            model.addAttribute("error",e.getMessage());
            return "404";
        }


    }

    //登出再重定向到主页
    @GetMapping("/users/logout")
    public String logout(@CookieValue("t")String t
            ,HttpServletRequest request,HttpServletResponse response){
        loginBiz.logout(t);
        CookieUtils.removeCookie(t,request,response);
        return "redirect:/index";
    }
}
