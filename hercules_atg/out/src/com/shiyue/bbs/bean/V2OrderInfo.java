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
@EntityPK(Pk = "", defaultColumn = false, tableName = "V2_ORDER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2OrderInfoDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.Long batch_id;//
	private java.lang.String bus_mer_id;//
	private java.lang.String mer_type;//
	private java.lang.String trans_mer_id;//
	private java.lang.String gw_type;//
	private java.lang.String bus_type;//
	private java.lang.String trans_type;//
	private java.lang.String mer_order_id;//
	private java.lang.String mer_order_time;//
	private java.lang.Long mer_amt;//
	private java.lang.String cur;//
	private java.lang.String order_desc;//
	private java.lang.String order_over_time;//
	private java.lang.String order_status;//
	private java.lang.String card_no;//
	private java.lang.String issbank_id;//
	private java.lang.String issbank_name;//
	private java.lang.String card_type;//
	private java.lang.Long org_order_id;//
	private java.lang.String refund_status;//
	private java.lang.Long refund_amt;//
	private java.lang.String front_url;//
	private java.lang.String back_url;//
	private java.lang.String trans_time;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String user_id;//
	private java.lang.String user_name;//
	private java.lang.String id_type;//
	private java.lang.String id_no;//
	private java.lang.String user_mobile;//
	private java.lang.String user_ip;//
	private java.lang.String gw_invoke_cmd;//
	private java.lang.String account1;//
	private java.lang.String account2;//
	private java.lang.String settle_date;//
	private java.lang.Long settle_amt;//
	private java.lang.String settle_cur;//
	private java.lang.String settle_conver_rate;//
	private java.lang.Long trans_fee;//
	private java.lang.Long tract_cost;//
	private java.lang.Long acqbank_profit;//
	private java.lang.Long agent_profit;//
	private java.lang.Long bypay_profit;//
	private java.lang.String error_code;//
	private java.lang.String reserved;//
	private java.lang.String ext;//
	private java.lang.Long tract_fee;//
	private java.lang.Long gross_profit;//
	private java.lang.Long mer_settle_amt;//
	private java.lang.Long trans_cost;//
	private java.lang.Long proxy_id;//
	private java.lang.String pay_tract;//
	private java.lang.String mer_short_name;//
	private java.lang.Long bypay_fee;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String terminal_serial_number;//
	private java.lang.String error_desc;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long agent_l2_profit;//
	private java.lang.String rates_type;//
	private java.lang.Short sett_status;//
	private java.lang.Short clear_status;//
	private java.lang.String clear_date;//

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
	public java.lang.Long getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.Long batch_id) {
		this.batch_id = batch_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_mer_id() {
		return bus_mer_id;
	}
	
   /**
	* 设置 
	* @param bus_mer_id
	*/
 	public void setBus_mer_id(java.lang.String bus_mer_id) {
		this.bus_mer_id = bus_mer_id;
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
	public java.lang.String getGw_type() {
		return gw_type;
	}
	
   /**
	* 设置 
	* @param gw_type
	*/
 	public void setGw_type(java.lang.String gw_type) {
		this.gw_type = gw_type;
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
	public java.lang.String getMer_order_id() {
		return mer_order_id;
	}
	
   /**
	* 设置 
	* @param mer_order_id
	*/
 	public void setMer_order_id(java.lang.String mer_order_id) {
		this.mer_order_id = mer_order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_order_time() {
		return mer_order_time;
	}
	
   /**
	* 设置 
	* @param mer_order_time
	*/
 	public void setMer_order_time(java.lang.String mer_order_time) {
		this.mer_order_time = mer_order_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMer_amt() {
		return mer_amt;
	}
	
   /**
	* 设置 
	* @param mer_amt
	*/
 	public void setMer_amt(java.lang.Long mer_amt) {
		this.mer_amt = mer_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCur() {
		return cur;
	}
	
   /**
	* 设置 
	* @param cur
	*/
 	public void setCur(java.lang.String cur) {
		this.cur = cur;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_desc() {
		return order_desc;
	}
	
   /**
	* 设置 
	* @param order_desc
	*/
 	public void setOrder_desc(java.lang.String order_desc) {
		this.order_desc = order_desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_over_time() {
		return order_over_time;
	}
	
   /**
	* 设置 
	* @param order_over_time
	*/
 	public void setOrder_over_time(java.lang.String order_over_time) {
		this.order_over_time = order_over_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_status() {
		return order_status;
	}
	
   /**
	* 设置 
	* @param order_status
	*/
 	public void setOrder_status(java.lang.String order_status) {
		this.order_status = order_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_no() {
		return card_no;
	}
	
   /**
	* 设置 
	* @param card_no
	*/
 	public void setCard_no(java.lang.String card_no) {
		this.card_no = card_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIssbank_id() {
		return issbank_id;
	}
	
   /**
	* 设置 
	* @param issbank_id
	*/
 	public void setIssbank_id(java.lang.String issbank_id) {
		this.issbank_id = issbank_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIssbank_name() {
		return issbank_name;
	}
	
   /**
	* 设置 
	* @param issbank_name
	*/
 	public void setIssbank_name(java.lang.String issbank_name) {
		this.issbank_name = issbank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_type() {
		return card_type;
	}
	
   /**
	* 设置 
	* @param card_type
	*/
 	public void setCard_type(java.lang.String card_type) {
		this.card_type = card_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getOrg_order_id() {
		return org_order_id;
	}
	
   /**
	* 设置 
	* @param org_order_id
	*/
 	public void setOrg_order_id(java.lang.Long org_order_id) {
		this.org_order_id = org_order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRefund_status() {
		return refund_status;
	}
	
   /**
	* 设置 
	* @param refund_status
	*/
 	public void setRefund_status(java.lang.String refund_status) {
		this.refund_status = refund_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getRefund_amt() {
		return refund_amt;
	}
	
   /**
	* 设置 
	* @param refund_amt
	*/
 	public void setRefund_amt(java.lang.Long refund_amt) {
		this.refund_amt = refund_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFront_url() {
		return front_url;
	}
	
   /**
	* 设置 
	* @param front_url
	*/
 	public void setFront_url(java.lang.String front_url) {
		this.front_url = front_url;
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
	public java.lang.String getTrans_time() {
		return trans_time;
	}
	
   /**
	* 设置 
	* @param trans_time
	*/
 	public void setTrans_time(java.lang.String trans_time) {
		this.trans_time = trans_time;
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
	public java.lang.String getUser_id() {
		return user_id;
	}
	
   /**
	* 设置 
	* @param user_id
	*/
 	public void setUser_id(java.lang.String user_id) {
		this.user_id = user_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUser_name() {
		return user_name;
	}
	
   /**
	* 设置 
	* @param user_name
	*/
 	public void setUser_name(java.lang.String user_name) {
		this.user_name = user_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getId_type() {
		return id_type;
	}
	
   /**
	* 设置 
	* @param id_type
	*/
 	public void setId_type(java.lang.String id_type) {
		this.id_type = id_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getId_no() {
		return id_no;
	}
	
   /**
	* 设置 
	* @param id_no
	*/
 	public void setId_no(java.lang.String id_no) {
		this.id_no = id_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUser_mobile() {
		return user_mobile;
	}
	
   /**
	* 设置 
	* @param user_mobile
	*/
 	public void setUser_mobile(java.lang.String user_mobile) {
		this.user_mobile = user_mobile;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUser_ip() {
		return user_ip;
	}
	
   /**
	* 设置 
	* @param user_ip
	*/
 	public void setUser_ip(java.lang.String user_ip) {
		this.user_ip = user_ip;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getGw_invoke_cmd() {
		return gw_invoke_cmd;
	}
	
   /**
	* 设置 
	* @param gw_invoke_cmd
	*/
 	public void setGw_invoke_cmd(java.lang.String gw_invoke_cmd) {
		this.gw_invoke_cmd = gw_invoke_cmd;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount1() {
		return account1;
	}
	
   /**
	* 设置 
	* @param account1
	*/
 	public void setAccount1(java.lang.String account1) {
		this.account1 = account1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2() {
		return account2;
	}
	
   /**
	* 设置 
	* @param account2
	*/
 	public void setAccount2(java.lang.String account2) {
		this.account2 = account2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_date() {
		return settle_date;
	}
	
   /**
	* 设置 
	* @param settle_date
	*/
 	public void setSettle_date(java.lang.String settle_date) {
		this.settle_date = settle_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSettle_amt() {
		return settle_amt;
	}
	
   /**
	* 设置 
	* @param settle_amt
	*/
 	public void setSettle_amt(java.lang.Long settle_amt) {
		this.settle_amt = settle_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_cur() {
		return settle_cur;
	}
	
   /**
	* 设置 
	* @param settle_cur
	*/
 	public void setSettle_cur(java.lang.String settle_cur) {
		this.settle_cur = settle_cur;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_conver_rate() {
		return settle_conver_rate;
	}
	
   /**
	* 设置 
	* @param settle_conver_rate
	*/
 	public void setSettle_conver_rate(java.lang.String settle_conver_rate) {
		this.settle_conver_rate = settle_conver_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.lang.Long trans_fee) {
		this.trans_fee = trans_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTract_cost() {
		return tract_cost;
	}
	
   /**
	* 设置 
	* @param tract_cost
	*/
 	public void setTract_cost(java.lang.Long tract_cost) {
		this.tract_cost = tract_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAcqbank_profit() {
		return acqbank_profit;
	}
	
   /**
	* 设置 
	* @param acqbank_profit
	*/
 	public void setAcqbank_profit(java.lang.Long acqbank_profit) {
		this.acqbank_profit = acqbank_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_profit() {
		return agent_profit;
	}
	
   /**
	* 设置 
	* @param agent_profit
	*/
 	public void setAgent_profit(java.lang.Long agent_profit) {
		this.agent_profit = agent_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBypay_profit() {
		return bypay_profit;
	}
	
   /**
	* 设置 
	* @param bypay_profit
	*/
 	public void setBypay_profit(java.lang.Long bypay_profit) {
		this.bypay_profit = bypay_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getError_code() {
		return error_code;
	}
	
   /**
	* 设置 
	* @param error_code
	*/
 	public void setError_code(java.lang.String error_code) {
		this.error_code = error_code;
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
	public java.lang.String getExt() {
		return ext;
	}
	
   /**
	* 设置 
	* @param ext
	*/
 	public void setExt(java.lang.String ext) {
		this.ext = ext;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTract_fee() {
		return tract_fee;
	}
	
   /**
	* 设置 
	* @param tract_fee
	*/
 	public void setTract_fee(java.lang.Long tract_fee) {
		this.tract_fee = tract_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getGross_profit() {
		return gross_profit;
	}
	
   /**
	* 设置 
	* @param gross_profit
	*/
 	public void setGross_profit(java.lang.Long gross_profit) {
		this.gross_profit = gross_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMer_settle_amt() {
		return mer_settle_amt;
	}
	
   /**
	* 设置 
	* @param mer_settle_amt
	*/
 	public void setMer_settle_amt(java.lang.Long mer_settle_amt) {
		this.mer_settle_amt = mer_settle_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTrans_cost() {
		return trans_cost;
	}
	
   /**
	* 设置 
	* @param trans_cost
	*/
 	public void setTrans_cost(java.lang.Long trans_cost) {
		this.trans_cost = trans_cost;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getProxy_id() {
		return proxy_id;
	}
	
   /**
	* 设置 
	* @param proxy_id
	*/
 	public void setProxy_id(java.lang.Long proxy_id) {
		this.proxy_id = proxy_id;
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
	public java.lang.String getMer_short_name() {
		return mer_short_name;
	}
	
   /**
	* 设置 
	* @param mer_short_name
	*/
 	public void setMer_short_name(java.lang.String mer_short_name) {
		this.mer_short_name = mer_short_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBypay_fee() {
		return bypay_fee;
	}
	
   /**
	* 设置 
	* @param bypay_fee
	*/
 	public void setBypay_fee(java.lang.Long bypay_fee) {
		this.bypay_fee = bypay_fee;
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
	public java.lang.String getTerminal_serial_number() {
		return terminal_serial_number;
	}
	
   /**
	* 设置 
	* @param terminal_serial_number
	*/
 	public void setTerminal_serial_number(java.lang.String terminal_serial_number) {
		this.terminal_serial_number = terminal_serial_number;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getError_desc() {
		return error_desc;
	}
	
   /**
	* 设置 
	* @param error_desc
	*/
 	public void setError_desc(java.lang.String error_desc) {
		this.error_desc = error_desc;
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
	public java.lang.Long getAgent_l2_profit() {
		return agent_l2_profit;
	}
	
   /**
	* 设置 
	* @param agent_l2_profit
	*/
 	public void setAgent_l2_profit(java.lang.Long agent_l2_profit) {
		this.agent_l2_profit = agent_l2_profit;
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
	public java.lang.Short getSett_status() {
		return sett_status;
	}
	
   /**
	* 设置 
	* @param sett_status
	*/
 	public void setSett_status(java.lang.Short sett_status) {
		this.sett_status = sett_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getClear_status() {
		return clear_status;
	}
	
   /**
	* 设置 
	* @param clear_status
	*/
 	public void setClear_status(java.lang.Short clear_status) {
		this.clear_status = clear_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_date() {
		return clear_date;
	}
	
   /**
	* 设置 
	* @param clear_date
	*/
 	public void setClear_date(java.lang.String clear_date) {
		this.clear_date = clear_date;
	}
}
