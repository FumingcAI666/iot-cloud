package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.DataStreamModelMapper;
import com.iotcloud.springboot.pojo.DataStreamModel;
import com.iotcloud.springboot.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DataStreamModelController {

    @Resource
    private DataStreamModelMapper dataStreamModelMapper;

    @RequestMapping("/dataStreamMode_infrom")
    public String equipmentInfrom(Integer eid, Model model, HttpSession session) {
        session.setAttribute("eid", eid);
        if (eid == null) {
            eid = (Integer) session.getAttribute("eid");
        }
        List<DataStreamModel> dataStreamModels = dataStreamModelMapper.selectByEid(eid);
        model.addAttribute("dataStreamModels", dataStreamModels);
        return "dataStreamModeInfrom";
    }

    @RequestMapping("/dataStreamMode_insert")
    public String dataStreamModeInsert(DataStreamModel dataStreamModel, Model model, HttpSession session) {
        dataStreamModel.setEid((Integer) session.getAttribute("eid"));
        System.out.println(dataStreamModel);
        if (dataStreamModel != null) {
            dataStreamModelMapper.insert(dataStreamModel);
            model.addAttribute("msg", "添加成功");
        }
        return "redirect:dataStreamMode_infrom";
    }

    @GetMapping(value = "/dataStreamModes")
    public String dataStreamModes(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            List<DataStreamModel> dataStreamModels = dataStreamModelMapper.selectByUid(user.getId());
            model.addAttribute("dataStreamModels", dataStreamModels);
            System.out.println(dataStreamModels + "\n");
        }
        return "dataStreamModes";
    }
}
