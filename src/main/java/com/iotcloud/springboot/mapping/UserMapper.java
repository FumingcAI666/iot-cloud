package com.iotcloud.springboot.mapping;

import com.iotcloud.springboot.pojo.User;
import com.iotcloud.springboot.pojo.UserExample;
import com.iotcloud.springboot.pojo.UserKey;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(UserKey key);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(UserKey key);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectUserByNameAndPassword(@Param("name") String name, @Param("password") String password);

    int selectByPhone(String phone);
}