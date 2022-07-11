package com.entity.view;

import com.entity.QichetuidingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 汽车退订
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
@TableName("qichetuiding")
public class QichetuidingView  extends QichetuidingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QichetuidingView(){
	}
 
 	public QichetuidingView(QichetuidingEntity qichetuidingEntity){
 	try {
			BeanUtils.copyProperties(this, qichetuidingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
