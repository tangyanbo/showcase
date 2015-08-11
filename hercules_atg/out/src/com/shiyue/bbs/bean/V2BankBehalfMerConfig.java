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
@EntityPK(Pk = "mer_id", defaultColumn = false, tableName = "V2_BANK_BEHALF_MER_CONFIG")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2BankBehalfMerConfigDto  extends BaseDtoImpl{//
	private java.lang.Long mer_id;//
	private java.lang.Long balance;//
	private java.lang.Long fee;//
	private java.lang.Long rate;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String back_url;//
	private java.lang.String mer_name;//
	private java.lang.Long available_balance;//
	private java.lang.Long blocked_balances;//
	private java.lang.Long available_fee;//
	private java.lang.Long blocked_fee;//
	private java.lang.String pay_tract;//
	private java.lang.String mer_sys_id;//
	private java.lang.String mer_type;//
	private java.lang.String trans_mer_id;//
	private java.lang.String account_no;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMer_id() {
		return mer_id;
	}
	
   /**
	* 设置 
	* @param mer_id
	*/
 	public void setMer_id(java.lang.Long mer_id) {
		this.mer_id = mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBalance() {
		return balance;
	}
	
   /**
	* 设置 
	* @param balance
	*/
 	public void setBalance(java.lang.Long balance) {
		this.balance = balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getFee() {
		return fee;
	}
	
   /**
	* 设置 
	* @param fee
	*/
 	public void setFee(java.lang.Long fee) {
		this.fee = fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getRate() {
		return rate;
	}
	
   /**
	* 设置 
	* @param rate
	*/
 	public void setRate(java.lang.Long rate) {
		this.rate = rate;
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
	public java.lang.String getFinish_time() {
		return finish_time;
	}
	
   /**
	* 设置 
	* @param finish_time
	*/
 	public void setFinish_time(java.lang.String finish_time) {
		this.finish_time = finish_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBack_url() {
		return back_url;
	}
	
   /**
	* 设置 
	* @param back_url
	*/
 	public void setBack_url(java.lang.String back_url) {
		this.back_url = back_url;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_name() {
		return mer_name;
	}
	
   /**
	* 设置 
	* @param mer_name
	*/
 	public void setMer_name(java.lang.String mer_name) {
		this.mer_name = mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAvailable_balance() {
		return available_balance;
	}
	
   /**
	* 设置 
	* @param available_balance
	*/
 	public void setAvailable_balance(java.lang.Long available_balance) {
		this.available_balance = available_balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBlocked_balances() {
		return blocked_balances;
	}
	
   /**
	* 设置 
	* @param blocked_balances
	*/
 	public void setBlocked_balances(java.lang.Long blocked_balances) {
		this.blocked_balances = blocked_balances;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAvailable_fee() {
		return available_fee;
	}
	
   /**
	* 设置 
	* @param available_fee
	*/
 	public void setAvailable_fee(java.lang.Long available_fee) {
		this.available_fee = available_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBlocked_fee() {
		return blocked_fee;
	}
	
   /**
	* 设置 
	* @param blocked_fee
	*/
 	public void setBlocked_fee(java.lang.Long blocked_fee) {
		this.blocked_fee = blocked_fee;
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
	public java.lang.String getMer_sys_id() {
		return mer_sys_id;
	}
	
   /**
	* 设置 
	* @param mer_sys_id
	*/
 	public void setMer_sys_id(java.lang.String mer_sys_id) {
		this.mer_sys_id = mer_sys_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_type() {
		return mer_type;
	}
	
   /**
	* 设置 
	* @param mer_type
	*/
 	public void setMer_type(java.lang.String mer_type) {
		this.mer_type = mer_type;
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
	public java.lang.String getAccount_no() {
		return account_no;
	}
	
   /**
	* 设置 
	* @param account_no
	*/
 	public void setAccount_no(java.lang.String account_no) {
		this.account_no = account_no;
	}
}
