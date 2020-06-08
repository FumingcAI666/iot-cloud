package com.iotcloud.springboot.mapping;

import com.iotcloud.springboot.pojo.DataStreamModel;
import com.iotcloud.springboot.pojo.DataStreamModelExample;

import java.util.List;

public interface DataStreamModelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DataStreamModel record);

    int insertSelective(DataStreamModel record);

    List<DataStreamModel> selectByExample(DataStreamModelExample example);

    List<DataStreamModel> selectByUid(Integer uid);

    DataStreamModel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DataStreamModel record);

    int updateByPrimaryKey(DataStreamModel record);

    List<DataStreamModel> selectByEid(Integer eid);
}