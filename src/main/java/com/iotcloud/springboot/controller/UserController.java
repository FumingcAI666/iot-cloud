package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.UserMapper;
import com.iotcloud.springboot.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Resource
    private UserMapper userMapper;

    @RequestMapping("/updata_user")
    public String updata(HttpSession session){
        if(session.getAttribute("user")!=null) {
            return "userform";
        }
        return "redirect:iotcloud";
    }

    @RequestMapping("/login_user")
    public String login(String name, String password, Model model, HttpSession session){
        if(session.getAttribute("user")!=null) {
            return "redirect:iotcloud";
        }
        User user = userMapper.selectUserByNameAndPassword(name,password);
        if(user != null){
            System.out.println(user);
            session.setAttribute("user",user);
            model.addAttribute("user",user);
            return "redirect:iotcloud";
        } else {
            return "login";
        }
    }

    @RequestMapping("/register_user")
    public String register(String name,String phone, String password, Model model, HttpSession session){
        if(userMapper.selectByPhone(phone)!=0) {
            model.addAttribute("msgjs","该手机号已被注册");
            return "register";
        } else{
            User user = new User();
            user.setName(name);
            user.setPhone(phone);
            user.setPassword(password);
            userMapper.insertSelective(user);
            model.addAttribute("msg","注册成功");
            return "login";
        }
    }

    @RequestMapping("/login_out")
    public String userOut(HttpSession session){
        session.removeAttribute("user");
        return "index";
    }
}
