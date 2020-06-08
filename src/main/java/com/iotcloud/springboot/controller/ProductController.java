package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.ProductMapper;
import com.iotcloud.springboot.pojo.Product;
import com.iotcloud.springboot.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class ProductController {

    @Resource
    private ProductMapper productMapper;

    @RequestMapping("/product_insert")
    public String register(Product product, Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        product.setUid(user.getId());
        System.out.println("product" + product);
        productMapper.insert(product);
        model.addAttribute("msg", "添加成功");
        return "redirect:product_infrom";
    }


}
