package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QichetuidingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QichetuidingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QichetuidingView;


/**
 * 汽车退订
 *
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
public interface QichetuidingService extends IService<QichetuidingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QichetuidingVO> selectListVO(Wrapper<QichetuidingEntity> wrapper);
   	
   	QichetuidingVO selectVO(@Param("ew") Wrapper<QichetuidingEntity> wrapper);
   	
   	List<QichetuidingView> selectListView(Wrapper<QichetuidingEntity> wrapper);
   	
   	QichetuidingView selectView(@Param("ew") Wrapper<QichetuidingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QichetuidingEntity> wrapper);
   	

}

