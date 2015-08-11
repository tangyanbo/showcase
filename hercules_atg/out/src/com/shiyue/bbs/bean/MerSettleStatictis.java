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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_SETTLE_STATICTIS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerSettleStatictisDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mid;//
	private java.lang.String mer_type;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String mer_name;//
	private java.lang.String account_num;//
	private java.lang.String account_name;//
	private java.lang.String account_agency_id;//
	private java.lang.String settle_date;//
	private java.lang.String sum_amt;//
	private java.lang.String sum_trans_fee;//
	private java.lang.String clear_amt;//
	private java.lang.String create_date;//
	private java.lang.String create_time;//
	private java.lang.Short clear_status;//
	private java.lang.String clear_order_id;//
	private java.lang.String faile_amt;//
	private java.lang.String bp_serial_number;//
	private java.lang.String count_fee;//
	private java.lang.String clear_desc;//
	private java.lang.String reserved;//
	private java.lang.Long stop_clear_amt;//

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
	public java.lang.String getAccount_num() {
		return account_num;
	}
	
   /**
	* 设置 
	* @param account_num
	*/
 	public void setAccount_num(java.lang.String account_num) {
		this.account_num = account_num;
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
	public java.lang.String getAccount_agency_id() {
		return account_agency_id;
	}
	
   /**
	* 设置 
	* @param account_agency_id
	*/
 	public void setAccount_agency_id(java.lang.String account_agency_id) {
		this.account_agency_id = account_agency_id;
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
	public java.lang.String getSum_amt() {
		return sum_amt;
	}
	
   /**
	* 设置 
	* @param sum_amt
	*/
 	public void setSum_amt(java.lang.String sum_amt) {
		this.sum_amt = sum_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSum_trans_fee() {
		return sum_trans_fee;
	}
	
   /**
	* 设置 
	* @param sum_trans_fee
	*/
 	public void setSum_trans_fee(java.lang.String sum_trans_fee) {
		this.sum_trans_fee = sum_trans_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_amt() {
		return clear_amt;
	}
	
   /**
	* 设置 
	* @param clear_amt
	*/
 	public void setClear_amt(java.lang.String clear_amt) {
		this.clear_amt = clear_amt;
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
	public java.lang.String getClear_order_id() {
		return clear_order_id;
	}
	
   /**
	* 设置 
	* @param clear_order_id
	*/
 	public void setClear_order_id(java.lang.String clear_order_id) {
		this.clear_order_id = clear_order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFaile_amt() {
		return faile_amt;
	}
	
   /**
	* 设置 
	* @param faile_amt
	*/
 	public void setFaile_amt(java.lang.String faile_amt) {
		this.faile_amt = faile_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBp_serial_number() {
		return bp_serial_number;
	}
	
   /**
	* 设置 
	* @param bp_serial_number
	*/
 	public void setBp_serial_number(java.lang.String bp_serial_number) {
		this.bp_serial_number = bp_serial_number;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCount_fee() {
		return count_fee;
	}
	
   /**
	* 设置 
	* @param count_fee
	*/
 	public void setCount_fee(java.lang.String count_fee) {
		this.count_fee = count_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_desc() {
		return clear_desc;
	}
	
   /**
	* 设置 
	* @param clear_desc
	*/
 	public void setClear_desc(java.lang.String clear_desc) {
		this.clear_desc = clear_desc;
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
	public java.lang.Long getStop_clear_amt() {
		return stop_clear_amt;
	}
	
   /**
	* 设置 
	* @param stop_clear_amt
	*/
 	public void setStop_clear_amt(java.lang.Long stop_clear_amt) {
		this.stop_clear_amt = stop_clear_amt;
	}
}
