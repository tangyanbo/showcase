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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "ERR_ORDER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class ErrOrderInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long order_id;//
	private java.lang.String terminal_id;//
	private java.lang.String merchant_id;//
	private java.lang.String merchant_name;//
	private java.lang.String tsn;//
	private java.lang.String trans_code;//
	private java.lang.String merchant_order_id;//
	private java.lang.String merchant_order_time;//
	private java.lang.String merchant_order_amt;//
	private java.lang.String merchant_order_currency;//
	private java.lang.String phone_num;//
	private java.lang.String product_type;//
	private java.lang.String bus_type;//
	private java.lang.String trans_type;//
	private java.lang.String terminal_ip;//
	private java.lang.String user_ip;//
	private java.lang.String batch_no;//
	private java.lang.String voucher_no;//
	private java.lang.String resp_code;//
	private java.lang.String resp_desc;//
	private java.lang.String trans_time;//
	private java.lang.String create_date;//
	private java.lang.String full_card_no;//
	private java.lang.String full_card_no2;//
	private java.lang.String reserved1;//

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
	public java.lang.String getMerchant_id() {
		return merchant_id;
	}
	
   /**
	* 设置 
	* @param merchant_id
	*/
 	public void setMerchant_id(java.lang.String merchant_id) {
		this.merchant_id = merchant_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMerchant_name() {
		return merchant_name;
	}
	
   /**
	* 设置 
	* @param merchant_name
	*/
 	public void setMerchant_name(java.lang.String merchant_name) {
		this.merchant_name = merchant_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTsn() {
		return tsn;
	}
	
   /**
	* 设置 
	* @param tsn
	*/
 	public void setTsn(java.lang.String tsn) {
		this.tsn = tsn;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_code() {
		return trans_code;
	}
	
   /**
	* 设置 
	* @param trans_code
	*/
 	public void setTrans_code(java.lang.String trans_code) {
		this.trans_code = trans_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMerchant_order_id() {
		return merchant_order_id;
	}
	
   /**
	* 设置 
	* @param merchant_order_id
	*/
 	public void setMerchant_order_id(java.lang.String merchant_order_id) {
		this.merchant_order_id = merchant_order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMerchant_order_time() {
		return merchant_order_time;
	}
	
   /**
	* 设置 
	* @param merchant_order_time
	*/
 	public void setMerchant_order_time(java.lang.String merchant_order_time) {
		this.merchant_order_time = merchant_order_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMerchant_order_amt() {
		return merchant_order_amt;
	}
	
   /**
	* 设置 
	* @param merchant_order_amt
	*/
 	public void setMerchant_order_amt(java.lang.String merchant_order_amt) {
		this.merchant_order_amt = merchant_order_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMerchant_order_currency() {
		return merchant_order_currency;
	}
	
   /**
	* 设置 
	* @param merchant_order_currency
	*/
 	public void setMerchant_order_currency(java.lang.String merchant_order_currency) {
		this.merchant_order_currency = merchant_order_currency;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPhone_num() {
		return phone_num;
	}
	
   /**
	* 设置 
	* @param phone_num
	*/
 	public void setPhone_num(java.lang.String phone_num) {
		this.phone_num = phone_num;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProduct_type() {
		return product_type;
	}
	
   /**
	* 设置 
	* @param product_type
	*/
 	public void setProduct_type(java.lang.String product_type) {
		this.product_type = product_type;
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
	public java.lang.String getTerminal_ip() {
		return terminal_ip;
	}
	
   /**
	* 设置 
	* @param terminal_ip
	*/
 	public void setTerminal_ip(java.lang.String terminal_ip) {
		this.terminal_ip = terminal_ip;
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
	public java.lang.String getFull_card_no2() {
		return full_card_no2;
	}
	
   /**
	* 设置 
	* @param full_card_no2
	*/
 	public void setFull_card_no2(java.lang.String full_card_no2) {
		this.full_card_no2 = full_card_no2;
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
}
