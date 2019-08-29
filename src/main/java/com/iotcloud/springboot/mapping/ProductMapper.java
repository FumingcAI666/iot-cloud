package com.iotcloud.springboot.mapping;

import com.iotcloud.springboot.pojo.Product;
import com.iotcloud.springboot.pojo.ProductExample;
import java.util.List;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    List<Product> selectByExample(ProductExample example);

    List<Product> selectByUid(Integer uid);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    int countByuid(Integer id);

}