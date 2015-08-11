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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_APP_TRACT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerAppTractDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long app_tract_id;//
	private java.lang.String trans_mer_id;//
	private java.lang.String trans_rate;//
	private java.lang.String lowest_fee;//
	private java.lang.String highest_fee;//
	private java.lang.String mer_profit;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String app_tract_type;//
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
	public java.lang.Long getMer_sys_id() {
		return mer_sys_id;
	}
	
   /**
	* 设置 
	* @param mer_sys_id
	*/
 	public void setMer_sys_id(java.lang.Long mer_sys_id) {
		this.mer_sys_id = mer_sys_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getApp_tract_id() {
		return app_tract_id;
	}
	
   /**
	* 设置 
	* @param app_tract_id
	*/
 	public void setApp_tract_id(java.lang.Long app_tract_id) {
		this.app_tract_id = app_tract_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_mer_id() {
		return trans_mer_id;
	}
	
   /**
	* 设置 
	* @param trans_mer_id
	*/
 	public void setTrans_mer_id(java.lang.String trans_mer_id) {
		this.trans_mer_id = trans_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_rate() {
		return trans_rate;
	}
	
   /**
	* 设置 
	* @param trans_rate
	*/
 	public void setTrans_rate(java.lang.String trans_rate) {
		this.trans_rate = trans_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLowest_fee() {
		return lowest_fee;
	}
	
   /**
	* 设置 
	* @param lowest_fee
	*/
 	public void setLowest_fee(java.lang.String lowest_fee) {
		this.lowest_fee = lowest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getHighest_fee() {
		return highest_fee;
	}
	
   /**
	* 设置 
	* @param highest_fee
	*/
 	public void setHighest_fee(java.lang.String highest_fee) {
		this.highest_fee = highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_profit() {
		return mer_profit;
	}
	
   /**
	* 设置 
	* @param mer_profit
	*/
 	public void setMer_profit(java.lang.String mer_profit) {
		this.mer_profit = mer_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getStatus() {
		return status;
	}
	
   /**
	* 设置 
	* @param status
	*/
 	public void setStatus(java.lang.String status) {
		this.status = status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCreate_time() {
		return create_time;
	}
	
   /**
	* 设置 
	* @param create_time
	*/
 	public void setCreate_time(java.lang.String create_time) {
		this.create_time = create_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getApp_tract_type() {
		return app_tract_type;
	}
	
   /**
	* 设置 
	* @param app_tract_type
	*/
 	public void setApp_tract_type(java.lang.String app_tract_type) {
		this.app_tract_type = app_tract_type;
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
