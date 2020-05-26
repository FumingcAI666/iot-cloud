package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.UserMapper;
import com.iotcloud.springboot.pojo.User;
import com.iotcloud.springboot.util.MD5Util;
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
    public String updata(HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "userform";
        }
        User user = new User();
        int result = userMapper.updateByPrimaryKeySelective(user);
        return "redirect:iotcloud";
    }


    @RequestMapping("/update_user")
    public String updateUser(String name, String phone, String password, String email, Model model, HttpSession session) {
        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);

        User user1ord = (User) session.getAttribute("user");
        user.setId(user1ord.getId());
        String phoneMD5 = MD5Util.string2MD5(user1ord.getPhone());
        user.setPhone(phoneMD5);

        // 更新库
        int result = userMapper.updateByPrimaryKeySelective(user);
        System.out.println("updateUser result:" + result);

        user.setPhone(user1ord.getPhone());
        // 更新缓存、更新model
        session.setAttribute("user", user);
        model.addAttribute("user", user);
        return "userform";
    }

    @RequestMapping("/login_user")
    public String login(String name, String password, Model model, HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "redirect:iotcloud";
        }
        // MD5加密
        String MD5phone = MD5Util.string2MD5(name);
        User user = userMapper.selectUserByNameAndPassword(MD5phone, password);

        if (user != null) {
            user.setPhone(name);

            System.out.println("user : " + user);
            session.setAttribute("user", user);
            model.addAttribute("user", user);
            return "redirect:iotcloud";
        } else {
            return "login";
        }
    }

    @RequestMapping("/register_user")
    public String register(String name, String phone, String password, Model model, HttpSession session) {
        // MD5加密
        phone = MD5Util.string2MD5(phone);

        if (userMapper.selectByPhone(phone) != 0) {
            model.addAttribute("msgjs", "该手机号已被注册");
            return "register";
        } else {
            User user = new User();
            user.setName(name);
            user.setPhone(phone);
            user.setPassword(password);
            userMapper.insertSelective(user);
            model.addAttribute("msg", "注册成功");
            return "login";
        }
    }

    @RequestMapping("/login_out")
    public String userOut(HttpSession session) {
        session.removeAttribute("user");
        return "index";
    }
}
