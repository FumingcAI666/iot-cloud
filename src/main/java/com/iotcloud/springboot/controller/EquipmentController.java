package com.iotcloud.springboot.controller;

import com.iotcloud.springboot.mapping.EquipmentMapper;
import com.iotcloud.springboot.pojo.Equipment;
import com.iotcloud.springboot.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EquipmentController {

    @Resource
    private EquipmentMapper equipmentMapper;

    @RequestMapping("/equipment_infrom")
    public String equipmentInfrom(Integer pid,String name,Model model, HttpSession session){
        if(pid == null){
            pid = (Integer) session.getAttribute("pid");
        }
        List<Equipment> equipments = equipmentMapper.selectByPid(pid);
        session.setAttribute("pid",pid);
        model.addAttribute("pname", name);
        model.addAttribute("equipments", equipments);
        return "equipmentinfrom";
    }

    @RequestMapping("/equipment_insert")
    public String equipmentInsert(Equipment equipment,Model model, HttpSession session){
        equipment.setPid((Integer) session.getAttribute("pid"));
        System.out.println(equipment);
        if(equipment != null) {
            equipmentMapper.insert(equipment);
            model.addAttribute("msg", "添加成功");
        }
        return "redirect:equipment_infrom";
    }

    @RequestMapping("/equipment_list")
    public String equipmentList(Model model, HttpSession session){
        User user = (User)session.getAttribute("user");
        List<Equipment> equipments = equipmentMapper.selectByUid(user.getId());
        model.addAttribute("equipments",equipments);
        System.out.println(equipments+"\n");
        return "equipmentlist";
    }


    @RequestMapping("/equipment_updata")
    public String equipmentUpdata(Integer id,Model model, HttpSession session){
        Equipment equipment = equipmentMapper.selectByPrimaryKey(id);
        model.addAttribute("equipment",equipment);
        return "equipment";
    }

    @RequestMapping("/equipment_updatas")
    public String equipmentUpdata(Equipment equipment,Model model, HttpSession session){
        System.out.println(equipment);
        equipmentMapper.updateByPrimaryKeySelective(equipment);
        model.addAttribute("msg", "修改成功");
        return "redirect:equipment_infrom";
    }

}
