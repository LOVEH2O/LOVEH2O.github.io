package com.dao;

import com.entity.JinchexinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JinchexinxiVO;
import com.entity.view.JinchexinxiView;


/**
 * 进车信息
 * 
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
public interface JinchexinxiDao extends BaseMapper<JinchexinxiEntity> {
	
	List<JinchexinxiVO> selectListVO(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
	
	JinchexinxiVO selectVO(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
	
	List<JinchexinxiView> selectListView(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);

	List<JinchexinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
	
	JinchexinxiView selectView(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JinchexinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
}
