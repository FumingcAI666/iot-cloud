package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.DataStreamEntityMapper;
import com.iotcloud.springboot.mapping.DataStreamModelMapper;
import com.iotcloud.springboot.mapping.EquipmentMapper;
import com.iotcloud.springboot.mapping.ProductMapper;
import com.iotcloud.springboot.pojo.*;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class indexController {
    @Resource
    private ProductMapper productMapper;
    @Resource
    private EquipmentMapper equipmentMapper;
    @Resource
    private DataStreamModelMapper dataStreamModelMapper;
    @Resource
    private DataStreamEntityMapper dataStreamEntityMapper;

    @PostMapping(value = "/test/{name}", produces = "application/json;charset=UTF-8")
    public @ResponseBody String test(@PathVariable("name") String name){
        System.out.println(name);
        return name;
    }

    @RequestMapping(value = "/test1",produces = "application/json;charset=UTF-8")
    public @ResponseBody String test1(String name){
        System.out.println(name);
        return name;
    }

    @GetMapping(value="/iotcloud")
    public String iotcloud(Model model, HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user!=null) {
            int uid = user.getId();
            List<Product> productlist = productMapper.selectByUid(uid);
            model.addAttribute("pcount",productlist.size());
            model.addAttribute("productlist",productlist);
            System.out.println(productlist+"\n");

            if (CollectionUtils.isNotEmpty(productlist)){
                List<Equipment> equipments = equipmentMapper.selectByUid(uid);
                model.addAttribute("qcount",equipments.size());
                model.addAttribute("equipments",equipments);
                System.out.println(equipments+"\n");

                if(CollectionUtils.isNotEmpty(equipments)){
                    List<DataStreamModel> dataStreamModels = dataStreamModelMapper.selectByUid(uid);
                    model.addAttribute("mcount",dataStreamModels.size());
                    model.addAttribute("dataStreamModels",dataStreamModels);
                    System.out.println(dataStreamModels+"\n");

                    if(CollectionUtils.isNotEmpty(dataStreamModels)){
                        List<DataStreamEntity> dataStreamEntities = dataStreamEntityMapper.selectByUid(uid);
                        model.addAttribute("ecount",dataStreamEntities.size());
                        model.addAttribute("dataStreamEntities",dataStreamEntities);
                        System.out.println(dataStreamEntities+"\n");
                    }else {
                        model.addAttribute("ecount",0);
                    }
                }else{
                    model.addAttribute("mcount",0);
                    model.addAttribute("ecount",0);
                }
            }else{
                model.addAttribute("qcount",0);
                model.addAttribute("mcount",0);
                model.addAttribute("ecount",0);
            }
            return "index";
        }else{
            model.addAttribute("pcount",0);
            model.addAttribute("qcount",0);
            model.addAttribute("mcount",0);
            model.addAttribute("ecount",0);
            return "index";
        }
    }

    @GetMapping(value="/inbox")
    public String inbox(){
        return "inbox";
    }

    @GetMapping(value="/login_soft")
    public String loginSoft(){
        return "login_soft";
    }

    @GetMapping(value="/register")
    public String register(){
        return "register";
    }

    @GetMapping(value="/product_infrom")
    public String productInfrom(Model model, HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user == null) {
            model.addAttribute("msg","请先登录！");
            return "login";
        }else{
            List<Product> products = productMapper.selectByUid(user.getId());
            System.out.println(products);
            model.addAttribute("products",products);
            model.addAttribute("user",user);
            return "productinfrom";
        }
    }


    @GetMapping(value="/model_shuju")
    @ResponseBody
    public DataStreamEntity modelShuju(){
        DataStreamEntity dataStreamEntity = dataStreamEntityMapper.selectByshuju();
        System.out.println(dataStreamEntity);
        return dataStreamEntity;
    }


    @GetMapping(value="/entity_info")
    public String entity_info(Model model, HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user == null) {
            model.addAttribute("msg","请先登录！");
            return "login";
        }else {
            List<DataStreamEntity> entities = dataStreamEntityMapper.selectByUid(user.getId());
            model.addAttribute("dataStreamEntities",entities);
            System.out.println(entities+"\n");
            return "entityinfo";
        }
    }
}
