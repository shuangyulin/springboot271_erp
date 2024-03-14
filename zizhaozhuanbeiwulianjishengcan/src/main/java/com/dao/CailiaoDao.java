package com.dao;

import com.entity.CailiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.CailiaoView;

/**
 * 材料信息 Dao 接口
 *
 * @author 
 */
public interface CailiaoDao extends BaseMapper<CailiaoEntity> {

   List<CailiaoView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
