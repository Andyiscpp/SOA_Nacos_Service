package org.csu.demo.dao;

import org.csu.demo.domain.Category;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author YinBo
 * @since 2025-03-08
 */
@Mapper
public interface CategoryDao extends BaseMapper<Category> {

}

