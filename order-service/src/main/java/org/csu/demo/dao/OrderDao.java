package org.csu.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.csu.demo.domain.Order;

@Mapper
public interface OrderDao extends BaseMapper<Order> {
    // 如需自定义SQL，可在此添加方法
}