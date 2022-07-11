package com.entity.model;

import com.entity.RexiaoqicheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 热销汽车
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-03-08 13:58:01
 */
public class RexiaoqicheModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 汽车图片
	 */
	
	private String qichetupian;
		
	/**
	 * 汽车品牌
	 */
	
	private String qichepinpai;
		
	/**
	 * 汽车分类
	 */
	
	private String qichefenlei;
		
	/**
	 * 天窗
	 */
	
	private String tianchuang;
		
	/**
	 * 换挡方式
	 */
	
	private String huandangfangshi;
		
	/**
	 * 座位
	 */
	
	private String zuowei;
		
	/**
	 * 汽车颜色
	 */
	
	private String qicheyanse;
		
	/**
	 * 上市年份
	 */
	
	private String shangshinianfen;
		
	/**
	 * 性能展示
	 */
	
	private String xingnengzhanshi;
		
	/**
	 * 汽车价格
	 */
	
	private Integer qichejiage;
		
	/**
	 * 数量
	 */
	
	private Integer shuliang;
		
	/**
	 * 参数配置
	 */
	
	private String canshupeizhi;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
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
	 * 设置：汽车分类
	 */
	 
	public void setQichefenlei(String qichefenlei) {
		this.qichefenlei = qichefenlei;
	}
	
	/**
	 * 获取：汽车分类
	 */
	public String getQichefenlei() {
		return qichefenlei;
	}
				
	
	/**
	 * 设置：天窗
	 */
	 
	public void setTianchuang(String tianchuang) {
		this.tianchuang = tianchuang;
	}
	
	/**
	 * 获取：天窗
	 */
	public String getTianchuang() {
		return tianchuang;
	}
				
	
	/**
	 * 设置：换挡方式
	 */
	 
	public void setHuandangfangshi(String huandangfangshi) {
		this.huandangfangshi = huandangfangshi;
	}
	
	/**
	 * 获取：换挡方式
	 */
	public String getHuandangfangshi() {
		return huandangfangshi;
	}
				
	
	/**
	 * 设置：座位
	 */
	 
	public void setZuowei(String zuowei) {
		this.zuowei = zuowei;
	}
	
	/**
	 * 获取：座位
	 */
	public String getZuowei() {
		return zuowei;
	}
				
	
	/**
	 * 设置：汽车颜色
	 */
	 
	public void setQicheyanse(String qicheyanse) {
		this.qicheyanse = qicheyanse;
	}
	
	/**
	 * 获取：汽车颜色
	 */
	public String getQicheyanse() {
		return qicheyanse;
	}
				
	
	/**
	 * 设置：上市年份
	 */
	 
	public void setShangshinianfen(String shangshinianfen) {
		this.shangshinianfen = shangshinianfen;
	}
	
	/**
	 * 获取：上市年份
	 */
	public String getShangshinianfen() {
		return shangshinianfen;
	}
				
	
	/**
	 * 设置：性能展示
	 */
	 
	public void setXingnengzhanshi(String xingnengzhanshi) {
		this.xingnengzhanshi = xingnengzhanshi;
	}
	
	/**
	 * 获取：性能展示
	 */
	public String getXingnengzhanshi() {
		return xingnengzhanshi;
	}
				
	
	/**
	 * 设置：汽车价格
	 */
	 
	public void setQichejiage(Integer qichejiage) {
		this.qichejiage = qichejiage;
	}
	
	/**
	 * 获取：汽车价格
	 */
	public Integer getQichejiage() {
		return qichejiage;
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
	 * 设置：参数配置
	 */
	 
	public void setCanshupeizhi(String canshupeizhi) {
		this.canshupeizhi = canshupeizhi;
	}
	
	/**
	 * 获取：参数配置
	 */
	public String getCanshupeizhi() {
		return canshupeizhi;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
