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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SUB_MER_SIGN_SETTLE_PROFIT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerSignSettleProfitDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long order_id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String sub_mer_sign_rate;//
	private java.lang.String sub_mer_sign_high_fee;//
	private java.lang.String sub_mer_trans_rate;//
	private java.lang.String sub_mer_trans_high_fee;//
	private java.lang.String create_date;//
	private java.lang.String create_time;//
	private java.lang.String profit_date;//
	private java.lang.String profit_time;//
	private java.lang.String profit;//
	private java.lang.String trans_type;//
	private java.lang.String status;//
	private java.lang.String desc;//
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
	public java.lang.Long getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 
	* @param order_id
	*/
 	public void setOrder_id(java.lang.Long order_id) {
		this.order_id = order_id;
	}
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
	public java.lang.String getSub_mer_sign_rate() {
		return sub_mer_sign_rate;
	}
	
   /**
	* 设置 
	* @param sub_mer_sign_rate
	*/
 	public void setSub_mer_sign_rate(java.lang.String sub_mer_sign_rate) {
		this.sub_mer_sign_rate = sub_mer_sign_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_sign_high_fee() {
		return sub_mer_sign_high_fee;
	}
	
   /**
	* 设置 
	* @param sub_mer_sign_high_fee
	*/
 	public void setSub_mer_sign_high_fee(java.lang.String sub_mer_sign_high_fee) {
		this.sub_mer_sign_high_fee = sub_mer_sign_high_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_trans_rate() {
		return sub_mer_trans_rate;
	}
	
   /**
	* 设置 
	* @param sub_mer_trans_rate
	*/
 	public void setSub_mer_trans_rate(java.lang.String sub_mer_trans_rate) {
		this.sub_mer_trans_rate = sub_mer_trans_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_trans_high_fee() {
		return sub_mer_trans_high_fee;
	}
	
   /**
	* 设置 
	* @param sub_mer_trans_high_fee
	*/
 	public void setSub_mer_trans_high_fee(java.lang.String sub_mer_trans_high_fee) {
		this.sub_mer_trans_high_fee = sub_mer_trans_high_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCreate_date() {
		return create_date;
	}
	
   /**
	* 设置 
	* @param create_date
	*/
 	public void setCreate_date(java.lang.String create_date) {
		this.create_date = create_date;
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
	public java.lang.String getProfit_date() {
		return profit_date;
	}
	
   /**
	* 设置 
	* @param profit_date
	*/
 	public void setProfit_date(java.lang.String profit_date) {
		this.profit_date = profit_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProfit_time() {
		return profit_time;
	}
	
   /**
	* 设置 
	* @param profit_time
	*/
 	public void setProfit_time(java.lang.String profit_time) {
		this.profit_time = profit_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProfit() {
		return profit;
	}
	
   /**
	* 设置 
	* @param profit
	*/
 	public void setProfit(java.lang.String profit) {
		this.profit = profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_type() {
		return trans_type;
	}
	
   /**
	* 设置 
	* @param trans_type
	*/
 	public void setTrans_type(java.lang.String trans_type) {
		this.trans_type = trans_type;
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
	public java.lang.String getDesc() {
		return desc;
	}
	
   /**
	* 设置 
	* @param desc
	*/
 	public void setDesc(java.lang.String desc) {
		this.desc = desc;
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
