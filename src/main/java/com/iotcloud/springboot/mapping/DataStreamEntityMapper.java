package com.iotcloud.springboot.mapping;

import com.iotcloud.springboot.pojo.DataStreamEntity;
import com.iotcloud.springboot.pojo.DataStreamEntityExample;

import java.util.List;

public interface DataStreamEntityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DataStreamEntity record);

    int insertSelective(DataStreamEntity record);

    List<DataStreamEntity> selectByExample(DataStreamEntityExample example);

    List<DataStreamEntity> selectByUid(Integer uid);

    DataStreamEntity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DataStreamEntity record);

    int updateByPrimaryKey(DataStreamEntity record);

    DataStreamEntity selectByshuju();
}