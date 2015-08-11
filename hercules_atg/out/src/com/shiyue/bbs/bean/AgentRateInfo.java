package com.shiyue.bbs.model.dto;
import com.hercules.database.dto.impl.BaseDtoImpl;
import com.hercules.database.util.Constant;
import com.hercules.dto.annotation.AddParentClass;
import com.hercules.dto.annotation.EntityPK;
import java.util.Date;

/**
 * 类功能:自动代码生成模板 DTO模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 * 
 * 规约开启方式 用于规约符合我们要求的对象
 * 1. 设置   AddParentClass = true
 * 2. 类       extends BaseDtoImpl
 * 
 * 规约关闭方式  用于规约不受我们控制的对象
 * 1. 设置   AddParentClass = false
 * 2. 类        implements IBaseDto
 */
@SuppressWarnings("serial")
@EntityPK(Pk = "id", defaultColumn = false, tableName = "AGENT_RATE_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class AgentRateInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long agent_id;//
	private java.lang.Long mcc_category_id;//
	private java.lang.String agent_rate_1;//
	private java.lang.String agent_rate_2;//
	private java.lang.String agent_highest_fee;//
	private java.lang.String remark;//
	private java.lang.String reserved;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id() {
		return agent_id;
	}
	
   /**
	* 设置 
	* @param agent_id
	*/
 	public void setAgent_id(java.lang.Long agent_id) {
		this.agent_id = agent_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMcc_category_id() {
		return mcc_category_id;
	}
	
   /**
	* 设置 
	* @param mcc_category_id
	*/
 	public void setMcc_category_id(java.lang.Long mcc_category_id) {
		this.mcc_category_id = mcc_category_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_rate_1() {
		return agent_rate_1;
	}
	
   /**
	* 设置 
	* @param agent_rate_1
	*/
 	public void setAgent_rate_1(java.lang.String agent_rate_1) {
		this.agent_rate_1 = agent_rate_1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_rate_2() {
		return agent_rate_2;
	}
	
   /**
	* 设置 
	* @param agent_rate_2
	*/
 	public void setAgent_rate_2(java.lang.String agent_rate_2) {
		this.agent_rate_2 = agent_rate_2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_highest_fee() {
		return agent_highest_fee;
	}
	
   /**
	* 设置 
	* @param agent_highest_fee
	*/
 	public void setAgent_highest_fee(java.lang.String agent_highest_fee) {
		this.agent_highest_fee = agent_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRemark() {
		return remark;
	}
	
   /**
	* 设置 
	* @param remark
	*/
 	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved() {
		return reserved;
	}
	
   /**
	* 设置 
	* @param reserved
	*/
 	public void setReserved(java.lang.String reserved) {
		this.reserved = reserved;
	}
}
