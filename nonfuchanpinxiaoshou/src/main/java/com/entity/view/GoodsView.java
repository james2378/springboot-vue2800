package com.entity.view;

import com.entity.GoodsEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 农副产品信息
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("goods")
public class GoodsView extends GoodsEntity implements Serializable {
    private static final long serialVersionUID = 1L;

		/**
		* 农副产品类型的值
		*/
		private String goodsValue;
		/**
		* 是否促销的值
		*/
		private String cuxiaoValue;
		/**
		* 是否上架的值
		*/
		private String shangxiaValue;



		//级联表 shangjia
			/**
			* 农户名称
			*/
			private String shangjiaName;
			/**
			* 联系方式
			*/
			private String shangjiaPhone;
			/**
			* 邮箱
			*/
			private String shangjiaEmail;
			/**
			* 审核状态
			*/
			private Integer shangjiaYesnoTypes;
				/**
				* 审核状态的值
				*/
				private String shangjiaYesnoValue;
			/**
			* 农户头像
			*/
			private String shangjiaPhoto;
			/**
			* 现有余额
			*/
			private Double newMoney;
			/**
			* 农户简介
			*/
			private String shangjiaContent;
			/**
			* 逻辑删除
			*/
			private Integer shangjiaDelete;

	public GoodsView() {

	}

	public GoodsView(GoodsEntity goodsEntity) {
		try {
			BeanUtils.copyProperties(this, goodsEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 农副产品类型的值
			*/
			public String getGoodsValue() {
				return goodsValue;
			}
			/**
			* 设置： 农副产品类型的值
			*/
			public void setGoodsValue(String goodsValue) {
				this.goodsValue = goodsValue;
			}
			/**
			* 获取： 是否促销的值
			*/
			public String getCuxiaoValue() {
				return cuxiaoValue;
			}
			/**
			* 设置： 是否促销的值
			*/
			public void setCuxiaoValue(String cuxiaoValue) {
				this.cuxiaoValue = cuxiaoValue;
			}
			/**
			* 获取： 是否上架的值
			*/
			public String getShangxiaValue() {
				return shangxiaValue;
			}
			/**
			* 设置： 是否上架的值
			*/
			public void setShangxiaValue(String shangxiaValue) {
				this.shangxiaValue = shangxiaValue;
			}


















				//级联表的get和set shangjia
					/**
					* 获取： 农户名称
					*/
					public String getShangjiaName() {
						return shangjiaName;
					}
					/**
					* 设置： 农户名称
					*/
					public void setShangjiaName(String shangjiaName) {
						this.shangjiaName = shangjiaName;
					}
					/**
					* 获取： 联系方式
					*/
					public String getShangjiaPhone() {
						return shangjiaPhone;
					}
					/**
					* 设置： 联系方式
					*/
					public void setShangjiaPhone(String shangjiaPhone) {
						this.shangjiaPhone = shangjiaPhone;
					}
					/**
					* 获取： 邮箱
					*/
					public String getShangjiaEmail() {
						return shangjiaEmail;
					}
					/**
					* 设置： 邮箱
					*/
					public void setShangjiaEmail(String shangjiaEmail) {
						this.shangjiaEmail = shangjiaEmail;
					}
					/**
					* 获取： 审核状态
					*/
					public Integer getShangjiaYesnoTypes() {
						return shangjiaYesnoTypes;
					}
					/**
					* 设置： 审核状态
					*/
					public void setShangjiaYesnoTypes(Integer shangjiaYesnoTypes) {
						this.shangjiaYesnoTypes = shangjiaYesnoTypes;
					}


						/**
						* 获取： 审核状态的值
						*/
						public String getShangjiaYesnoValue() {
							return shangjiaYesnoValue;
						}
						/**
						* 设置： 审核状态的值
						*/
						public void setShangjiaYesnoValue(String shangjiaYesnoValue) {
							this.shangjiaYesnoValue = shangjiaYesnoValue;
						}
					/**
					* 获取： 农户头像
					*/
					public String getShangjiaPhoto() {
						return shangjiaPhoto;
					}
					/**
					* 设置： 农户头像
					*/
					public void setShangjiaPhoto(String shangjiaPhoto) {
						this.shangjiaPhoto = shangjiaPhoto;
					}
					/**
					* 获取： 现有余额
					*/
					public Double getNewMoney() {
						return newMoney;
					}
					/**
					* 设置： 现有余额
					*/
					public void setNewMoney(Double newMoney) {
						this.newMoney = newMoney;
					}
					/**
					* 获取： 农户简介
					*/
					public String getShangjiaContent() {
						return shangjiaContent;
					}
					/**
					* 设置： 农户简介
					*/
					public void setShangjiaContent(String shangjiaContent) {
						this.shangjiaContent = shangjiaContent;
					}
					/**
					* 获取： 逻辑删除
					*/
					public Integer getShangjiaDelete() {
						return shangjiaDelete;
					}
					/**
					* 设置： 逻辑删除
					*/
					public void setShangjiaDelete(Integer shangjiaDelete) {
						this.shangjiaDelete = shangjiaDelete;
					}




}
