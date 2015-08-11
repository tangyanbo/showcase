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
@EntityPK(Pk = "app_tract_id", defaultColumn = false, tableName = "APP_TRACT_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class AppTractInfoDto  extends BaseDtoImpl{//
	private java.lang.Long app_tract_id;//
	private java.lang.String app_tract_name;//
	private java.lang.String trans_mer_id;//
	private java.lang.String pay_tract;//
	private java.lang.String trans_rate_cost;//
	private java.lang.String trans_lowest_cost;//
	private java.lang.String trans_highest_cost;//
	private java.lang.String bypay_profit;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String per_card_quota;//
	private java.lang.String card_quota;//
	private java.lang.String card_count;//
	private java.lang.String trans_time_begin;//
	private java.lang.String trans_time_end;//
	private java.lang.String tract_type;//
	private java.lang.String terminal_id;//
	private java.lang.String spid;//

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
	public java.lang.String getApp_tract_name() {
		return app_tract_name;
	}
	
   /**
	* 设置 
	* @param app_tract_name
	*/
 	public void setApp_tract_name(java.lang.String app_tract_name) {
		this.app_tract_name = app_tract_name;
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
	public java.lang.String getPay_tract() {
		return pay_tract;
	}
	
   /**
	* 设置 
	* @param pay_tract
	*/
 	public void setPay_tract(java.lang.String pay_tract) {
		this.pay_tract = pay_tract;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_rate_cost() {
		return trans_rate_cost;
	}
	
   /**
	* 设置 
	* @param trans_rate_cost
	*/
 	public void setTrans_rate_cost(java.lang.String trans_rate_cost) {
		this.trans_rate_cost = trans_rate_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_lowest_cost() {
		return trans_lowest_cost;
	}
	
   /**
	* 设置 
	* @param trans_lowest_cost
	*/
 	public void setTrans_lowest_cost(java.lang.String trans_lowest_cost) {
		this.trans_lowest_cost = trans_lowest_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_highest_cost() {
		return trans_highest_cost;
	}
	
   /**
	* 设置 
	* @param trans_highest_cost
	*/
 	public void setTrans_highest_cost(java.lang.String trans_highest_cost) {
		this.trans_highest_cost = trans_highest_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBypay_profit() {
		return bypay_profit;
	}
	
   /**
	* 设置 
	* @param bypay_profit
	*/
 	public void setBypay_profit(java.lang.String bypay_profit) {
		this.bypay_profit = bypay_profit;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPer_card_quota() {
		return per_card_quota;
	}
	
   /**
	* 设置 
	* @param per_card_quota
	*/
 	public void setPer_card_quota(java.lang.String per_card_quota) {
		this.per_card_quota = per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_quota() {
		return card_quota;
	}
	
   /**
	* 设置 
	* @param card_quota
	*/
 	public void setCard_quota(java.lang.String card_quota) {
		this.card_quota = card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_count() {
		return card_count;
	}
	
   /**
	* 设置 
	* @param card_count
	*/
 	public void setCard_count(java.lang.String card_count) {
		this.card_count = card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_time_begin() {
		return trans_time_begin;
	}
	
   /**
	* 设置 
	* @param trans_time_begin
	*/
 	public void setTrans_time_begin(java.lang.String trans_time_begin) {
		this.trans_time_begin = trans_time_begin;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_time_end() {
		return trans_time_end;
	}
	
   /**
	* 设置 
	* @param trans_time_end
	*/
 	public void setTrans_time_end(java.lang.String trans_time_end) {
		this.trans_time_end = trans_time_end;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_type() {
		return tract_type;
	}
	
   /**
	* 设置 
	* @param tract_type
	*/
 	public void setTract_type(java.lang.String tract_type) {
		this.tract_type = tract_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_id() {
		return terminal_id;
	}
	
   /**
	* 设置 
	* @param terminal_id
	*/
 	public void setTerminal_id(java.lang.String terminal_id) {
		this.terminal_id = terminal_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSpid() {
		return spid;
	}
	
   /**
	* 设置 
	* @param spid
	*/
 	public void setSpid(java.lang.String spid) {
		this.spid = spid;
	}
}
