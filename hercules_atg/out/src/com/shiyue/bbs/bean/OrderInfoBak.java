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
@EntityPK(Pk = "order_id", defaultColumn = false, tableName = "ORDER_INFO_BAK")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class OrderInfoBakDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.String batch_id;//
	private java.lang.String terminal_id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long agent_id_l2;//
	private java.lang.Long agent_id_l1;//
	private java.lang.String trans_mer_id;//
	private java.lang.String trans_type;//
	private java.lang.String terminal_type;//
	private java.lang.String mer_order_id;//
	private java.lang.String mer_order_time;//
	private java.lang.Long mer_amt;//
	private java.lang.String order_fee;//
	private java.lang.String currency;//
	private java.lang.String order_desc;//
	private java.lang.String order_over_time;//
	private java.lang.String order_status;//
	private java.lang.String refund_status;//
	private java.lang.Long org_order_id;//
	private java.lang.Long org_order_amt;//
	private java.lang.String card_no;//
	private java.lang.String card_type;//
	private java.lang.String issue_bank_id;//
	private java.lang.String issue_bank_name;//
	private java.lang.String user_mobile;//
	private java.lang.String back_url;//
	private java.lang.String create_time;//
	private java.lang.String trans_time;//
	private java.lang.String finish_time;//
	private java.lang.String user_ip;//
	private java.lang.String batch_no;//
	private java.lang.String reffer_no;//
	private java.lang.String auth_no;//
	private java.lang.String voucher_no;//
	private java.lang.String settle_amt;//
	private java.lang.String settle_date;//
	private java.lang.String settle_cur;//
	private java.lang.String settle_conver_rate;//
	private java.lang.String trace_no;//
	private java.lang.String qid;//
	private java.lang.String resp_code;//
	private java.lang.String resp_desc;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String ext;//
	private java.lang.String account_name;//
	private java.lang.String account2_no;//
	private java.lang.String account2_name;//
	private java.lang.String account2_bank;//
	private java.lang.String trans_fee;//
	private java.lang.String bus_type;//
	private java.lang.String create_date;//
	private java.lang.String full_card_no;//
	private java.lang.String order_rate_type;//
	private java.lang.String trans_mer_name;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//
	private java.lang.Short settle_status;//

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
	public java.lang.String getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.String batch_id) {
		this.batch_id = batch_id;
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
	public java.lang.Long getAgent_id_l2() {
		return agent_id_l2;
	}
	
   /**
	* 设置 
	* @param agent_id_l2
	*/
 	public void setAgent_id_l2(java.lang.Long agent_id_l2) {
		this.agent_id_l2 = agent_id_l2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id_l1() {
		return agent_id_l1;
	}
	
   /**
	* 设置 
	* @param agent_id_l1
	*/
 	public void setAgent_id_l1(java.lang.Long agent_id_l1) {
		this.agent_id_l1 = agent_id_l1;
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
	public java.lang.String getOrder_fee() {
		return order_fee;
	}
	
   /**
	* 设置 
	* @param order_fee
	*/
 	public void setOrder_fee(java.lang.String order_fee) {
		this.order_fee = order_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCurrency() {
		return currency;
	}
	
   /**
	* 设置 
	* @param currency
	*/
 	public void setCurrency(java.lang.String currency) {
		this.currency = currency;
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
	public java.lang.Long getOrg_order_amt() {
		return org_order_amt;
	}
	
   /**
	* 设置 
	* @param org_order_amt
	*/
 	public void setOrg_order_amt(java.lang.Long org_order_amt) {
		this.org_order_amt = org_order_amt;
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
	public java.lang.String getIssue_bank_id() {
		return issue_bank_id;
	}
	
   /**
	* 设置 
	* @param issue_bank_id
	*/
 	public void setIssue_bank_id(java.lang.String issue_bank_id) {
		this.issue_bank_id = issue_bank_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIssue_bank_name() {
		return issue_bank_name;
	}
	
   /**
	* 设置 
	* @param issue_bank_name
	*/
 	public void setIssue_bank_name(java.lang.String issue_bank_name) {
		this.issue_bank_name = issue_bank_name;
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
	public java.lang.String getBatch_no() {
		return batch_no;
	}
	
   /**
	* 设置 
	* @param batch_no
	*/
 	public void setBatch_no(java.lang.String batch_no) {
		this.batch_no = batch_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReffer_no() {
		return reffer_no;
	}
	
   /**
	* 设置 
	* @param reffer_no
	*/
 	public void setReffer_no(java.lang.String reffer_no) {
		this.reffer_no = reffer_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_no() {
		return auth_no;
	}
	
   /**
	* 设置 
	* @param auth_no
	*/
 	public void setAuth_no(java.lang.String auth_no) {
		this.auth_no = auth_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getVoucher_no() {
		return voucher_no;
	}
	
   /**
	* 设置 
	* @param voucher_no
	*/
 	public void setVoucher_no(java.lang.String voucher_no) {
		this.voucher_no = voucher_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_amt() {
		return settle_amt;
	}
	
   /**
	* 设置 
	* @param settle_amt
	*/
 	public void setSettle_amt(java.lang.String settle_amt) {
		this.settle_amt = settle_amt;
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
	public java.lang.String getTrace_no() {
		return trace_no;
	}
	
   /**
	* 设置 
	* @param trace_no
	*/
 	public void setTrace_no(java.lang.String trace_no) {
		this.trace_no = trace_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getQid() {
		return qid;
	}
	
   /**
	* 设置 
	* @param qid
	*/
 	public void setQid(java.lang.String qid) {
		this.qid = qid;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getResp_code() {
		return resp_code;
	}
	
   /**
	* 设置 
	* @param resp_code
	*/
 	public void setResp_code(java.lang.String resp_code) {
		this.resp_code = resp_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getResp_desc() {
		return resp_desc;
	}
	
   /**
	* 设置 
	* @param resp_desc
	*/
 	public void setResp_desc(java.lang.String resp_desc) {
		this.resp_desc = resp_desc;
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
	public java.lang.String getAccount_name() {
		return account_name;
	}
	
   /**
	* 设置 
	* @param account_name
	*/
 	public void setAccount_name(java.lang.String account_name) {
		this.account_name = account_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2_no() {
		return account2_no;
	}
	
   /**
	* 设置 
	* @param account2_no
	*/
 	public void setAccount2_no(java.lang.String account2_no) {
		this.account2_no = account2_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2_name() {
		return account2_name;
	}
	
   /**
	* 设置 
	* @param account2_name
	*/
 	public void setAccount2_name(java.lang.String account2_name) {
		this.account2_name = account2_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2_bank() {
		return account2_bank;
	}
	
   /**
	* 设置 
	* @param account2_bank
	*/
 	public void setAccount2_bank(java.lang.String account2_bank) {
		this.account2_bank = account2_bank;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.lang.String trans_fee) {
		this.trans_fee = trans_fee;
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
	public java.lang.String getFull_card_no() {
		return full_card_no;
	}
	
   /**
	* 设置 
	* @param full_card_no
	*/
 	public void setFull_card_no(java.lang.String full_card_no) {
		this.full_card_no = full_card_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_rate_type() {
		return order_rate_type;
	}
	
   /**
	* 设置 
	* @param order_rate_type
	*/
 	public void setOrder_rate_type(java.lang.String order_rate_type) {
		this.order_rate_type = order_rate_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_mer_name() {
		return trans_mer_name;
	}
	
   /**
	* 设置 
	* @param trans_mer_name
	*/
 	public void setTrans_mer_name(java.lang.String trans_mer_name) {
		this.trans_mer_name = trans_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved1() {
		return reserved1;
	}
	
   /**
	* 设置 
	* @param reserved1
	*/
 	public void setReserved1(java.lang.String reserved1) {
		this.reserved1 = reserved1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved2() {
		return reserved2;
	}
	
   /**
	* 设置 
	* @param reserved2
	*/
 	public void setReserved2(java.lang.String reserved2) {
		this.reserved2 = reserved2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved3() {
		return reserved3;
	}
	
   /**
	* 设置 
	* @param reserved3
	*/
 	public void setReserved3(java.lang.String reserved3) {
		this.reserved3 = reserved3;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getSettle_status() {
		return settle_status;
	}
	
   /**
	* 设置 
	* @param settle_status
	*/
 	public void setSettle_status(java.lang.Short settle_status) {
		this.settle_status = settle_status;
	}
}
