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
@EntityPK(Pk = "", defaultColumn = false, tableName = "MER_TRANS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerTransDto  extends BaseDtoImpl{//
	private java.lang.Long mer_sys_id;//
	private java.lang.String trans_key;//
	private java.lang.String public_key;//
	private java.lang.String private_key;//
	private java.lang.String rules;//
	private java.lang.String lowest_trans_amt;//
	private java.lang.String terminal_type;//
	private java.lang.String bus_type;//
	private java.lang.String action_list;//
	private java.lang.String auto_approve;//
	private java.lang.String auth_status;//
	private java.lang.String t0_status;//
	private java.lang.String clear_type;//
	private java.lang.String clear_tract;//
	private java.lang.String trans_notify_status;//
	private java.lang.String trans_notify_url;//
	private java.lang.String trans_notify_action_list;//
	private java.lang.String basic_rate;//
	private java.lang.String basic_rate2;//
	private java.lang.String basic_highest_fee;//
	private java.lang.String basic_per_card_quota;//
	private java.lang.String basic_card_quota;//
	private java.lang.String baisc_card_count;//
	private java.lang.String basic_terminal_quota;//
	private java.lang.String basic_region;//
	private java.lang.String basic_mcc;//
	private java.lang.String mer_rate_1;//
	private java.lang.String mer_rate_2;//
	private java.lang.String mer_highest_fee;//
	private java.lang.String mer_lowest_fee;//
	private java.lang.String mer_profit_rate;//
	private java.lang.String mer_tsn;//
	private java.lang.String reserved;//
	private java.lang.String rate_type;//
	private java.lang.Long is_report;//
	private java.lang.String is_app_trans_terminal;//
	private java.lang.String t0_rate;//

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
	public java.lang.String getTrans_key() {
		return trans_key;
	}
	
   /**
	* 设置 
	* @param trans_key
	*/
 	public void setTrans_key(java.lang.String trans_key) {
		this.trans_key = trans_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPublic_key() {
		return public_key;
	}
	
   /**
	* 设置 
	* @param public_key
	*/
 	public void setPublic_key(java.lang.String public_key) {
		this.public_key = public_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPrivate_key() {
		return private_key;
	}
	
   /**
	* 设置 
	* @param private_key
	*/
 	public void setPrivate_key(java.lang.String private_key) {
		this.private_key = private_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRules() {
		return rules;
	}
	
   /**
	* 设置 
	* @param rules
	*/
 	public void setRules(java.lang.String rules) {
		this.rules = rules;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLowest_trans_amt() {
		return lowest_trans_amt;
	}
	
   /**
	* 设置 
	* @param lowest_trans_amt
	*/
 	public void setLowest_trans_amt(java.lang.String lowest_trans_amt) {
		this.lowest_trans_amt = lowest_trans_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_type() {
		return terminal_type;
	}
	
   /**
	* 设置 
	* @param terminal_type
	*/
 	public void setTerminal_type(java.lang.String terminal_type) {
		this.terminal_type = terminal_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_type() {
		return bus_type;
	}
	
   /**
	* 设置 
	* @param bus_type
	*/
 	public void setBus_type(java.lang.String bus_type) {
		this.bus_type = bus_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAction_list() {
		return action_list;
	}
	
   /**
	* 设置 
	* @param action_list
	*/
 	public void setAction_list(java.lang.String action_list) {
		this.action_list = action_list;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuto_approve() {
		return auto_approve;
	}
	
   /**
	* 设置 
	* @param auto_approve
	*/
 	public void setAuto_approve(java.lang.String auto_approve) {
		this.auto_approve = auto_approve;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_status() {
		return auth_status;
	}
	
   /**
	* 设置 
	* @param auth_status
	*/
 	public void setAuth_status(java.lang.String auth_status) {
		this.auth_status = auth_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT0_status() {
		return t0_status;
	}
	
   /**
	* 设置 
	* @param t0_status
	*/
 	public void setT0_status(java.lang.String t0_status) {
		this.t0_status = t0_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_type() {
		return clear_type;
	}
	
   /**
	* 设置 
	* @param clear_type
	*/
 	public void setClear_type(java.lang.String clear_type) {
		this.clear_type = clear_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_tract() {
		return clear_tract;
	}
	
   /**
	* 设置 
	* @param clear_tract
	*/
 	public void setClear_tract(java.lang.String clear_tract) {
		this.clear_tract = clear_tract;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_notify_status() {
		return trans_notify_status;
	}
	
   /**
	* 设置 
	* @param trans_notify_status
	*/
 	public void setTrans_notify_status(java.lang.String trans_notify_status) {
		this.trans_notify_status = trans_notify_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_notify_url() {
		return trans_notify_url;
	}
	
   /**
	* 设置 
	* @param trans_notify_url
	*/
 	public void setTrans_notify_url(java.lang.String trans_notify_url) {
		this.trans_notify_url = trans_notify_url;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_notify_action_list() {
		return trans_notify_action_list;
	}
	
   /**
	* 设置 
	* @param trans_notify_action_list
	*/
 	public void setTrans_notify_action_list(java.lang.String trans_notify_action_list) {
		this.trans_notify_action_list = trans_notify_action_list;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_rate() {
		return basic_rate;
	}
	
   /**
	* 设置 
	* @param basic_rate
	*/
 	public void setBasic_rate(java.lang.String basic_rate) {
		this.basic_rate = basic_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_rate2() {
		return basic_rate2;
	}
	
   /**
	* 设置 
	* @param basic_rate2
	*/
 	public void setBasic_rate2(java.lang.String basic_rate2) {
		this.basic_rate2 = basic_rate2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_highest_fee() {
		return basic_highest_fee;
	}
	
   /**
	* 设置 
	* @param basic_highest_fee
	*/
 	public void setBasic_highest_fee(java.lang.String basic_highest_fee) {
		this.basic_highest_fee = basic_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_per_card_quota() {
		return basic_per_card_quota;
	}
	
   /**
	* 设置 
	* @param basic_per_card_quota
	*/
 	public void setBasic_per_card_quota(java.lang.String basic_per_card_quota) {
		this.basic_per_card_quota = basic_per_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_card_quota() {
		return basic_card_quota;
	}
	
   /**
	* 设置 
	* @param basic_card_quota
	*/
 	public void setBasic_card_quota(java.lang.String basic_card_quota) {
		this.basic_card_quota = basic_card_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBaisc_card_count() {
		return baisc_card_count;
	}
	
   /**
	* 设置 
	* @param baisc_card_count
	*/
 	public void setBaisc_card_count(java.lang.String baisc_card_count) {
		this.baisc_card_count = baisc_card_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_terminal_quota() {
		return basic_terminal_quota;
	}
	
   /**
	* 设置 
	* @param basic_terminal_quota
	*/
 	public void setBasic_terminal_quota(java.lang.String basic_terminal_quota) {
		this.basic_terminal_quota = basic_terminal_quota;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_region() {
		return basic_region;
	}
	
   /**
	* 设置 
	* @param basic_region
	*/
 	public void setBasic_region(java.lang.String basic_region) {
		this.basic_region = basic_region;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBasic_mcc() {
		return basic_mcc;
	}
	
   /**
	* 设置 
	* @param basic_mcc
	*/
 	public void setBasic_mcc(java.lang.String basic_mcc) {
		this.basic_mcc = basic_mcc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_rate_1() {
		return mer_rate_1;
	}
	
   /**
	* 设置 
	* @param mer_rate_1
	*/
 	public void setMer_rate_1(java.lang.String mer_rate_1) {
		this.mer_rate_1 = mer_rate_1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_rate_2() {
		return mer_rate_2;
	}
	
   /**
	* 设置 
	* @param mer_rate_2
	*/
 	public void setMer_rate_2(java.lang.String mer_rate_2) {
		this.mer_rate_2 = mer_rate_2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_highest_fee() {
		return mer_highest_fee;
	}
	
   /**
	* 设置 
	* @param mer_highest_fee
	*/
 	public void setMer_highest_fee(java.lang.String mer_highest_fee) {
		this.mer_highest_fee = mer_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_lowest_fee() {
		return mer_lowest_fee;
	}
	
   /**
	* 设置 
	* @param mer_lowest_fee
	*/
 	public void setMer_lowest_fee(java.lang.String mer_lowest_fee) {
		this.mer_lowest_fee = mer_lowest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_profit_rate() {
		return mer_profit_rate;
	}
	
   /**
	* 设置 
	* @param mer_profit_rate
	*/
 	public void setMer_profit_rate(java.lang.String mer_profit_rate) {
		this.mer_profit_rate = mer_profit_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_tsn() {
		return mer_tsn;
	}
	
   /**
	* 设置 
	* @param mer_tsn
	*/
 	public void setMer_tsn(java.lang.String mer_tsn) {
		this.mer_tsn = mer_tsn;
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
	public java.lang.Long getIs_report() {
		return is_report;
	}
	
   /**
	* 设置 
	* @param is_report
	*/
 	public void setIs_report(java.lang.Long is_report) {
		this.is_report = is_report;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_app_trans_terminal() {
		return is_app_trans_terminal;
	}
	
   /**
	* 设置 
	* @param is_app_trans_terminal
	*/
 	public void setIs_app_trans_terminal(java.lang.String is_app_trans_terminal) {
		this.is_app_trans_terminal = is_app_trans_terminal;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT0_rate() {
		return t0_rate;
	}
	
   /**
	* 设置 
	* @param t0_rate
	*/
 	public void setT0_rate(java.lang.String t0_rate) {
		this.t0_rate = t0_rate;
	}
}
