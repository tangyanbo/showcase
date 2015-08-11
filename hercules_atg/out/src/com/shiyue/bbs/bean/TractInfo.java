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
@EntityPK(Pk = "tract_id", defaultColumn = false, tableName = "TRACT_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TractInfoDto  extends BaseDtoImpl{//
	private java.lang.Long tract_id;//
	private java.lang.String tract_name;//
	private java.lang.String trans_mer_id;//
	private java.lang.String tract_agency;//
	private java.lang.String rates_type;//
	private java.lang.String acq_agency_id;//
	private java.lang.String acq_agency_name;//
	private java.lang.String pay_tract;//
	private java.lang.String tract_rate;//
	private java.lang.String tract_highest_fee;//
	private java.lang.String credit_rate_cost;//
	private java.lang.String debit_rate_cost;//
	private java.lang.String credit_highest_cost;//
	private java.lang.String debit_highest_cost;//
	private java.lang.String lowest_cost;//
	private java.lang.String bypay_profit;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String per_card_quota;//
	private java.lang.String card_quota;//
	private java.lang.String card_count;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String trans_time_begin;//
	private java.lang.String trans_time_end;//
	private java.lang.String mcc;//
	private java.lang.String night_flag;//
	private java.lang.String integral;//
	private java.lang.String tract_quota;//
	private java.lang.String tract_flag;//
	private java.lang.String terminal_id;//
	private java.lang.String spid;//
	private java.lang.String card_flag;//
	private java.lang.String tract_num;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTract_id() {
		return tract_id;
	}
	
   /**
	* 设置 
	* @param tract_id
	*/
 	public void setTract_id(java.lang.Long tract_id) {
		this.tract_id = tract_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_name() {
		return tract_name;
	}
	
   /**
	* 设置 
	* @param tract_name
	*/
 	public void setTract_name(java.lang.String tract_name) {
		this.tract_name = tract_name;
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
	public java.lang.String getTract_agency() {
		return tract_agency;
	}
	
   /**
	* 设置 
	* @param tract_agency
	*/
 	public void setTract_agency(java.lang.String tract_agency) {
		this.tract_agency = tract_agency;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRates_type() {
		return rates_type;
	}
	
   /**
	* 设置 
	* @param rates_type
	*/
 	public void setRates_type(java.lang.String rates_type) {
		this.rates_type = rates_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAcq_agency_id() {
		return acq_agency_id;
	}
	
   /**
	* 设置 
	* @param acq_agency_id
	*/
 	public void setAcq_agency_id(java.lang.String acq_agency_id) {
		this.acq_agency_id = acq_agency_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAcq_agency_name() {
		return acq_agency_name;
	}
	
   /**
	* 设置 
	* @param acq_agency_name
	*/
 	public void setAcq_agency_name(java.lang.String acq_agency_name) {
		this.acq_agency_name = acq_agency_name;
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
	public java.lang.String getTract_rate() {
		return tract_rate;
	}
	
   /**
	* 设置 
	* @param tract_rate
	*/
 	public void setTract_rate(java.lang.String tract_rate) {
		this.tract_rate = tract_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_highest_fee() {
		return tract_highest_fee;
	}
	
   /**
	* 设置 
	* @param tract_highest_fee
	*/
 	public void setTract_highest_fee(java.lang.String tract_highest_fee) {
		this.tract_highest_fee = tract_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCredit_rate_cost() {
		return credit_rate_cost;
	}
	
   /**
	* 设置 
	* @param credit_rate_cost
	*/
 	public void setCredit_rate_cost(java.lang.String credit_rate_cost) {
		this.credit_rate_cost = credit_rate_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDebit_rate_cost() {
		return debit_rate_cost;
	}
	
   /**
	* 设置 
	* @param debit_rate_cost
	*/
 	public void setDebit_rate_cost(java.lang.String debit_rate_cost) {
		this.debit_rate_cost = debit_rate_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCredit_highest_cost() {
		return credit_highest_cost;
	}
	
   /**
	* 设置 
	* @param credit_highest_cost
	*/
 	public void setCredit_highest_cost(java.lang.String credit_highest_cost) {
		this.credit_highest_cost = credit_highest_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDebit_highest_cost() {
		return debit_highest_cost;
	}
	
   /**
	* 设置 
	* @param debit_highest_cost
	*/
 	public void setDebit_highest_cost(java.lang.String debit_highest_cost) {
		this.debit_highest_cost = debit_highest_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLowest_cost() {
		return lowest_cost;
	}
	
   /**
	* 设置 
	* @param lowest_cost
	*/
 	public void setLowest_cost(java.lang.String lowest_cost) {
		this.lowest_cost = lowest_cost;
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
	public java.lang.String getMcc() {
		return mcc;
	}
	
   /**
	* 设置 
	* @param mcc
	*/
 	public void setMcc(java.lang.String mcc) {
		this.mcc = mcc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getNight_flag() {
		return night_flag;
	}
	
   /**
	* 设置 
	* @param night_flag
	*/
 	public void setNight_flag(java.lang.String night_flag) {
		this.night_flag = night_flag;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIntegral() {
		return integral;
	}
	
   /**
	* 设置 
	* @param integral
	*/
 	public void setIntegral(java.lang.String integral) {
		this.integral = integral;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_quota() {
		return tract_quota;
	}
	
   /**
	* 设置 
	* @param tract_quota
	*/
 	public void setTract_quota(java.lang.String tract_quota) {
		this.tract_quota = tract_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_flag() {
		return tract_flag;
	}
	
   /**
	* 设置 
	* @param tract_flag
	*/
 	public void setTract_flag(java.lang.String tract_flag) {
		this.tract_flag = tract_flag;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_flag() {
		return card_flag;
	}
	
   /**
	* 设置 
	* @param card_flag
	*/
 	public void setCard_flag(java.lang.String card_flag) {
		this.card_flag = card_flag;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_num() {
		return tract_num;
	}
	
   /**
	* 设置 
	* @param tract_num
	*/
 	public void setTract_num(java.lang.String tract_num) {
		this.tract_num = tract_num;
	}
}
