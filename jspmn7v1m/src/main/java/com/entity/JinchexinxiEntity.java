package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 进车信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
@TableName("jinchexinxi")
public class JinchexinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JinchexinxiEntity() {
		
	}
	
	public JinchexinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 汽车名称
	 */
					
	private String qichemingcheng;
	
	/**
	 * 汽车图片
	 */
					
	private String qichetupian;
	
	/**
	 * 汽车品牌
	 */
					
	private String qichepinpai;
	
	/**
	 * 进货价
	 */
					
	private Integer jinhuojia;
	
	/**
	 * 数量
	 */
					
	private Integer shuliang;
	
	/**
	 * 进货金额
	 */
					
	private Float jinhuojine;
	
	/**
	 * 供应商
	 */
					
	private String gongyingshang;
	
	/**
	 * 进货时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jinhuoshijian;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：汽车名称
	 */
	public void setQichemingcheng(String qichemingcheng) {
		this.qichemingcheng = qichemingcheng;
	}
	/**
	 * 获取：汽车名称
	 */
	public String getQichemingcheng() {
		return qichemingcheng;
	}
	/**
	 * 设置：汽车图片
	 */
	public void setQichetupian(String qichetupian) {
		this.qichetupian = qichetupian;
	}
	/**
	 * 获取：汽车图片
	 */
	public String getQichetupian() {
		return qichetupian;
	}
	/**
	 * 设置：汽车品牌
	 */
	public void setQichepinpai(String qichepinpai) {
		this.qichepinpai = qichepinpai;
	}
	/**
	 * 获取：汽车品牌
	 */
	public String getQichepinpai() {
		return qichepinpai;
	}
	/**
	 * 设置：进货价
	 */
	public void setJinhuojia(Integer jinhuojia) {
		this.jinhuojia = jinhuojia;
	}
	/**
	 * 获取：进货价
	 */
	public Integer getJinhuojia() {
		return jinhuojia;
	}
	/**
	 * 设置：数量
	 */
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
	/**
	 * 设置：进货金额
	 */
	public void setJinhuojine(Float jinhuojine) {
		this.jinhuojine = jinhuojine;
	}
	/**
	 * 获取：进货金额
	 */
	public Float getJinhuojine() {
		return jinhuojine;
	}
	/**
	 * 设置：供应商
	 */
	public void setGongyingshang(String gongyingshang) {
		this.gongyingshang = gongyingshang;
	}
	/**
	 * 获取：供应商
	 */
	public String getGongyingshang() {
		return gongyingshang;
	}
	/**
	 * 设置：进货时间
	 */
	public void setJinhuoshijian(Date jinhuoshijian) {
		this.jinhuoshijian = jinhuoshijian;
	}
	/**
	 * 获取：进货时间
	 */
	public Date getJinhuoshijian() {
		return jinhuoshijian;
	}

}
