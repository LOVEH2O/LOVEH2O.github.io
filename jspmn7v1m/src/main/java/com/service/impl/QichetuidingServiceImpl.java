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


import com.dao.QichetuidingDao;
import com.entity.QichetuidingEntity;
import com.service.QichetuidingService;
import com.entity.vo.QichetuidingVO;
import com.entity.view.QichetuidingView;

@Service("qichetuidingService")
public class QichetuidingServiceImpl extends ServiceImpl<QichetuidingDao, QichetuidingEntity> implements QichetuidingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QichetuidingEntity> page = this.selectPage(
                new Query<QichetuidingEntity>(params).getPage(),
                new EntityWrapper<QichetuidingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QichetuidingEntity> wrapper) {
		  Page<QichetuidingView> page =new Query<QichetuidingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QichetuidingVO> selectListVO(Wrapper<QichetuidingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QichetuidingVO selectVO(Wrapper<QichetuidingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QichetuidingView> selectListView(Wrapper<QichetuidingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QichetuidingView selectView(Wrapper<QichetuidingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
