package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JinchexinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JinchexinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JinchexinxiView;


/**
 * 进车信息
 *
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
public interface JinchexinxiService extends IService<JinchexinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JinchexinxiVO> selectListVO(Wrapper<JinchexinxiEntity> wrapper);
   	
   	JinchexinxiVO selectVO(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
   	
   	List<JinchexinxiView> selectListView(Wrapper<JinchexinxiEntity> wrapper);
   	
   	JinchexinxiView selectView(@Param("ew") Wrapper<JinchexinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JinchexinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<JinchexinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<JinchexinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<JinchexinxiEntity> wrapper);
}

