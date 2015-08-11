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
@EntityPK(Pk = "mid", defaultColumn = false, tableName = "MER_RISK")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerRiskDto  extends BaseDtoImpl{//
	private java.lang.Long mid;//
	private java.lang.String mer_type;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String sub_mer_name;//
	private java.lang.String debit_per_card_quota;//
	private java.lang.String debit_card_quota;//
	private java.lang.String debit_card_count;//
	private java.lang.String credit_per_card_quota;//
	private java.lang.String credit_card_quota;//
	private java.lang.String credit_card_count;//
	private java.lang.String terminal_card_quota;//
	private java.lang.String transfer_per_card_quota;//
	private java.lang.String transfer_card_quota;//
	private java.lang.String transfer_card_count;//
	private java.lang.String terminal_transfer_card_quota;//
	private java.lang.String pay_credit_per_card_quota;//
	private java.lang.String pay_credit_card_quota;//
	private java.lang.String pay_credit_card_count;//
	private java.lang.String trans_time_begin;//
	private java.lang.String trans_time_end;//
	private java.lang.String trans_rules;//
	private java.lang.String query_credit_card_count;//
	private java.lang.String query_debit_card_count;//
	private java.lang.Long mer_trans_quota;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMid() {
		return mid;
	}
	
   /**
	* 设置 
	* @param mid
	*/
 	public void setMid(java.lang.Long mid) {
		this.mid = mid;
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
	public java.lang.String getSub_mer_name() {
		return sub_mer_name;
	}
	
   /**
	* 设置 
	* @param sub_mer_name
	*/
 	public void setSub_mer_name(java.lang.String sub_mer_name) {
		this.sub_mer_name = sub_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDebit_per_card_quota() {
		return debit_per_card_quota;
	}
	
   /**
	* 设置 
	* @param debit_per_card_quota
	*/
 	public void setDebit_per_card_quota(java.lang.String debit_per_card_quota) {
		this.debit_per_card_quota = debit_per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDebit_card_quota() {
		return debit_card_quota;
	}
	
   /**
	* 设置 
	* @param debit_card_quota
	*/
 	public void setDebit_card_quota(java.lang.String debit_card_quota) {
		this.debit_card_quota = debit_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDebit_card_count() {
		return debit_card_count;
	}
	
   /**
	* 设置 
	* @param debit_card_count
	*/
 	public void setDebit_card_count(java.lang.String debit_card_count) {
		this.debit_card_count = debit_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCredit_per_card_quota() {
		return credit_per_card_quota;
	}
	
   /**
	* 设置 
	* @param credit_per_card_quota
	*/
 	public void setCredit_per_card_quota(java.lang.String credit_per_card_quota) {
		this.credit_per_card_quota = credit_per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCredit_card_quota() {
		return credit_card_quota;
	}
	
   /**
	* 设置 
	* @param credit_card_quota
	*/
 	public void setCredit_card_quota(java.lang.String credit_card_quota) {
		this.credit_card_quota = credit_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCredit_card_count() {
		return credit_card_count;
	}
	
   /**
	* 设置 
	* @param credit_card_count
	*/
 	public void setCredit_card_count(java.lang.String credit_card_count) {
		this.credit_card_count = credit_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_card_quota() {
		return terminal_card_quota;
	}
	
   /**
	* 设置 
	* @param terminal_card_quota
	*/
 	public void setTerminal_card_quota(java.lang.String terminal_card_quota) {
		this.terminal_card_quota = terminal_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTransfer_per_card_quota() {
		return transfer_per_card_quota;
	}
	
   /**
	* 设置 
	* @param transfer_per_card_quota
	*/
 	public void setTransfer_per_card_quota(java.lang.String transfer_per_card_quota) {
		this.transfer_per_card_quota = transfer_per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTransfer_card_quota() {
		return transfer_card_quota;
	}
	
   /**
	* 设置 
	* @param transfer_card_quota
	*/
 	public void setTransfer_card_quota(java.lang.String transfer_card_quota) {
		this.transfer_card_quota = transfer_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTransfer_card_count() {
		return transfer_card_count;
	}
	
   /**
	* 设置 
	* @param transfer_card_count
	*/
 	public void setTransfer_card_count(java.lang.String transfer_card_count) {
		this.transfer_card_count = transfer_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_transfer_card_quota() {
		return terminal_transfer_card_quota;
	}
	
   /**
	* 设置 
	* @param terminal_transfer_card_quota
	*/
 	public void setTerminal_transfer_card_quota(java.lang.String terminal_transfer_card_quota) {
		this.terminal_transfer_card_quota = terminal_transfer_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_credit_per_card_quota() {
		return pay_credit_per_card_quota;
	}
	
   /**
	* 设置 
	* @param pay_credit_per_card_quota
	*/
 	public void setPay_credit_per_card_quota(java.lang.String pay_credit_per_card_quota) {
		this.pay_credit_per_card_quota = pay_credit_per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_credit_card_quota() {
		return pay_credit_card_quota;
	}
	
   /**
	* 设置 
	* @param pay_credit_card_quota
	*/
 	public void setPay_credit_card_quota(java.lang.String pay_credit_card_quota) {
		this.pay_credit_card_quota = pay_credit_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_credit_card_count() {
		return pay_credit_card_count;
	}
	
   /**
	* 设置 
	* @param pay_credit_card_count
	*/
 	public void setPay_credit_card_count(java.lang.String pay_credit_card_count) {
		this.pay_credit_card_count = pay_credit_card_count;
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
	public java.lang.String getTrans_rules() {
		return trans_rules;
	}
	
   /**
	* 设置 
	* @param trans_rules
	*/
 	public void setTrans_rules(java.lang.String trans_rules) {
		this.trans_rules = trans_rules;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getQuery_credit_card_count() {
		return query_credit_card_count;
	}
	
   /**
	* 设置 
	* @param query_credit_card_count
	*/
 	public void setQuery_credit_card_count(java.lang.String query_credit_card_count) {
		this.query_credit_card_count = query_credit_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getQuery_debit_card_count() {
		return query_debit_card_count;
	}
	
   /**
	* 设置 
	* @param query_debit_card_count
	*/
 	public void setQuery_debit_card_count(java.lang.String query_debit_card_count) {
		this.query_debit_card_count = query_debit_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMer_trans_quota() {
		return mer_trans_quota;
	}
	
   /**
	* 设置 
	* @param mer_trans_quota
	*/
 	public void setMer_trans_quota(java.lang.Long mer_trans_quota) {
		this.mer_trans_quota = mer_trans_quota;
	}
}
