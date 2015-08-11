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
@EntityPK(Pk = "", defaultColumn = false, tableName = "SUB_MER_RATE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerRateDto  extends BaseDtoImpl{//
	private java.lang.Long sub_mer_id;//
	private java.lang.String rate_type;//
	private java.lang.String trans_rate;//
	private java.lang.String trans_rate_h;//
	private java.lang.String trans_highest_fee;//
	private java.lang.String lowest_fee;//
	private java.lang.String agent_l1_rate;//
	private java.lang.String agent_l1_rate_h;//
	private java.lang.String agent_l1_highest_fee;//
	private java.lang.String agent_l1_profit_rate;//
	private java.lang.String agent_l2_rate;//
	private java.lang.String agent_l2_rate_h;//
	private java.lang.String agent_l2_highest_fee;//
	private java.lang.String agent_l2_profit_rate;//
	private java.lang.String create_time;//
	private java.lang.String status;//
	private java.lang.String reserved;//
	private java.lang.String sub_mer_tract;//
	private java.lang.String mcc_category_id;//
	private java.lang.String sign_rate;//
	private java.lang.String sign_rate_h;//
	private java.lang.String sign_highest_fee;//
	private java.lang.String sign_lowest_fee;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.Long sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRate_type() {
		return rate_type;
	}
	
   /**
	* 设置 
	* @param rate_type
	*/
 	public void setRate_type(java.lang.String rate_type) {
		this.rate_type = rate_type;
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
	public java.lang.String getTrans_rate_h() {
		return trans_rate_h;
	}
	
   /**
	* 设置 
	* @param trans_rate_h
	*/
 	public void setTrans_rate_h(java.lang.String trans_rate_h) {
		this.trans_rate_h = trans_rate_h;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_highest_fee() {
		return trans_highest_fee;
	}
	
   /**
	* 设置 
	* @param trans_highest_fee
	*/
 	public void setTrans_highest_fee(java.lang.String trans_highest_fee) {
		this.trans_highest_fee = trans_highest_fee;
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
	public java.lang.String getAgent_l1_rate() {
		return agent_l1_rate;
	}
	
   /**
	* 设置 
	* @param agent_l1_rate
	*/
 	public void setAgent_l1_rate(java.lang.String agent_l1_rate) {
		this.agent_l1_rate = agent_l1_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l1_rate_h() {
		return agent_l1_rate_h;
	}
	
   /**
	* 设置 
	* @param agent_l1_rate_h
	*/
 	public void setAgent_l1_rate_h(java.lang.String agent_l1_rate_h) {
		this.agent_l1_rate_h = agent_l1_rate_h;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l1_highest_fee() {
		return agent_l1_highest_fee;
	}
	
   /**
	* 设置 
	* @param agent_l1_highest_fee
	*/
 	public void setAgent_l1_highest_fee(java.lang.String agent_l1_highest_fee) {
		this.agent_l1_highest_fee = agent_l1_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l1_profit_rate() {
		return agent_l1_profit_rate;
	}
	
   /**
	* 设置 
	* @param agent_l1_profit_rate
	*/
 	public void setAgent_l1_profit_rate(java.lang.String agent_l1_profit_rate) {
		this.agent_l1_profit_rate = agent_l1_profit_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l2_rate() {
		return agent_l2_rate;
	}
	
   /**
	* 设置 
	* @param agent_l2_rate
	*/
 	public void setAgent_l2_rate(java.lang.String agent_l2_rate) {
		this.agent_l2_rate = agent_l2_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l2_rate_h() {
		return agent_l2_rate_h;
	}
	
   /**
	* 设置 
	* @param agent_l2_rate_h
	*/
 	public void setAgent_l2_rate_h(java.lang.String agent_l2_rate_h) {
		this.agent_l2_rate_h = agent_l2_rate_h;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l2_highest_fee() {
		return agent_l2_highest_fee;
	}
	
   /**
	* 设置 
	* @param agent_l2_highest_fee
	*/
 	public void setAgent_l2_highest_fee(java.lang.String agent_l2_highest_fee) {
		this.agent_l2_highest_fee = agent_l2_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_l2_profit_rate() {
		return agent_l2_profit_rate;
	}
	
   /**
	* 设置 
	* @param agent_l2_profit_rate
	*/
 	public void setAgent_l2_profit_rate(java.lang.String agent_l2_profit_rate) {
		this.agent_l2_profit_rate = agent_l2_profit_rate;
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
	public java.lang.String getSub_mer_tract() {
		return sub_mer_tract;
	}
	
   /**
	* 设置 
	* @param sub_mer_tract
	*/
 	public void setSub_mer_tract(java.lang.String sub_mer_tract) {
		this.sub_mer_tract = sub_mer_tract;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMcc_category_id() {
		return mcc_category_id;
	}
	
   /**
	* 设置 
	* @param mcc_category_id
	*/
 	public void setMcc_category_id(java.lang.String mcc_category_id) {
		this.mcc_category_id = mcc_category_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_rate() {
		return sign_rate;
	}
	
   /**
	* 设置 
	* @param sign_rate
	*/
 	public void setSign_rate(java.lang.String sign_rate) {
		this.sign_rate = sign_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_rate_h() {
		return sign_rate_h;
	}
	
   /**
	* 设置 
	* @param sign_rate_h
	*/
 	public void setSign_rate_h(java.lang.String sign_rate_h) {
		this.sign_rate_h = sign_rate_h;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_highest_fee() {
		return sign_highest_fee;
	}
	
   /**
	* 设置 
	* @param sign_highest_fee
	*/
 	public void setSign_highest_fee(java.lang.String sign_highest_fee) {
		this.sign_highest_fee = sign_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_lowest_fee() {
		return sign_lowest_fee;
	}
	
   /**
	* 设置 
	* @param sign_lowest_fee
	*/
 	public void setSign_lowest_fee(java.lang.String sign_lowest_fee) {
		this.sign_lowest_fee = sign_lowest_fee;
	}
}
