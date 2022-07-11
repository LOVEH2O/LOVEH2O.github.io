package com.dao;

import com.entity.QichetuidingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QichetuidingVO;
import com.entity.view.QichetuidingView;


/**
 * 汽车退订
 * 
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
public interface QichetuidingDao extends BaseMapper<QichetuidingEntity> {
	
	List<QichetuidingVO> selectListVO(@Param("ew") Wrapper<QichetuidingEntity> wrapper);
	
	QichetuidingVO selectVO(@Param("ew") Wrapper<QichetuidingEntity> wrapper);
	
	List<QichetuidingView> selectListView(@Param("ew") Wrapper<QichetuidingEntity> wrapper);

	List<QichetuidingView> selectListView(Pagination page,@Param("ew") Wrapper<QichetuidingEntity> wrapper);
	
	QichetuidingView selectView(@Param("ew") Wrapper<QichetuidingEntity> wrapper);
	

}
