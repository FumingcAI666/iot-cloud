package com.iotcloud.springboot.mapping;

import com.iotcloud.springboot.pojo.Equipment;
import com.iotcloud.springboot.pojo.EquipmentExample;
import java.util.List;

public interface EquipmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    List<Equipment> selectByExample(EquipmentExample example);

    List<Equipment> selectByUid(Integer uid);

    Equipment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);

    List<Equipment> selectByPid(Integer pid);
}