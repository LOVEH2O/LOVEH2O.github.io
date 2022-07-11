package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JinchexinxiDao;
import com.entity.JinchexinxiEntity;
import com.service.JinchexinxiService;
import com.entity.vo.JinchexinxiVO;
import com.entity.view.JinchexinxiView;

@Service("jinchexinxiService")
public class JinchexinxiServiceImpl extends ServiceImpl<JinchexinxiDao, JinchexinxiEntity> implements JinchexinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JinchexinxiEntity> page = this.selectPage(
                new Query<JinchexinxiEntity>(params).getPage(),
                new EntityWrapper<JinchexinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JinchexinxiEntity> wrapper) {
		  Page<JinchexinxiView> page =new Query<JinchexinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JinchexinxiVO> selectListVO(Wrapper<JinchexinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JinchexinxiVO selectVO(Wrapper<JinchexinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JinchexinxiView> selectListView(Wrapper<JinchexinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JinchexinxiView selectView(Wrapper<JinchexinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<JinchexinxiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<JinchexinxiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<JinchexinxiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
