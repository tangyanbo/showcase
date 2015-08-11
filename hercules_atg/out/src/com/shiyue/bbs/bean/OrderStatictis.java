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
@EntityPK(Pk = "serial_no", defaultColumn = false, tableName = "ORDER_STATICTIS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class OrderStatictisDto  extends BaseDtoImpl{//
	private java.lang.Long serial_no;//
	private java.lang.Long order_id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_amt;//
	private java.math.BigDecimal trans_fee;//
	private java.math.BigDecimal clear_amt;//
	private java.lang.String clear_type;//
	private java.lang.String clear_tract;//
	private java.lang.String clear_time;//
	private java.lang.String create_time;//
	private java.lang.String trans_type;//
	private java.lang.String settle_date;//
	private java.lang.String reserved;//
	private java.lang.String create_date;//
	private java.lang.String clear_batch_no;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSerial_no() {
		return serial_no;
	}
	
   /**
	* 设置 
	* @param serial_no
	*/
 	public void setSerial_no(java.lang.Long serial_no) {
		this.serial_no = serial_no;
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
	public java.math.BigDecimal getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.math.BigDecimal trans_fee) {
		this.trans_fee = trans_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getClear_amt() {
		return clear_amt;
	}
	
   /**
	* 设置 
	* @param clear_amt
	*/
 	public void setClear_amt(java.math.BigDecimal clear_amt) {
		this.clear_amt = clear_amt;
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
	public java.lang.String getClear_time() {
		return clear_time;
	}
	
   /**
	* 设置 
	* @param clear_time
	*/
 	public void setClear_time(java.lang.String clear_time) {
		this.clear_time = clear_time;
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
	public java.lang.String getClear_batch_no() {
		return clear_batch_no;
	}
	
   /**
	* 设置 
	* @param clear_batch_no
	*/
 	public void setClear_batch_no(java.lang.String clear_batch_no) {
		this.clear_batch_no = clear_batch_no;
	}
}
