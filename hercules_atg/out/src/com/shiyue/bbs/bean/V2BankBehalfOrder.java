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
@EntityPK(Pk = "behalf_order_id", defaultColumn = false, tableName = "V2_BANK_BEHALF_ORDER")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2BankBehalfOrderDto  extends BaseDtoImpl{//
	private java.lang.Long behalf_order_id;//
	private java.lang.String mer_order_id;//
	private java.lang.String mer_order_time;//
	private java.lang.String bus_mer_id;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String total_number;//
	private java.lang.String success_mumber;//
	private java.lang.String fail_number;//
	private java.lang.String amount;//
	private java.lang.String trans_amount;//
	private java.lang.String back_url;//
	private java.lang.String order_id;//
	private java.lang.String mer_name;//
	private java.lang.String sub_mer_id;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBehalf_order_id() {
		return behalf_order_id;
	}
	
   /**
	* 设置 
	* @param behalf_order_id
	*/
 	public void setBehalf_order_id(java.lang.Long behalf_order_id) {
		this.behalf_order_id = behalf_order_id;
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
	public java.lang.String getTotal_number() {
		return total_number;
	}
	
   /**
	* 设置 
	* @param total_number
	*/
 	public void setTotal_number(java.lang.String total_number) {
		this.total_number = total_number;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSuccess_mumber() {
		return success_mumber;
	}
	
   /**
	* 设置 
	* @param success_mumber
	*/
 	public void setSuccess_mumber(java.lang.String success_mumber) {
		this.success_mumber = success_mumber;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFail_number() {
		return fail_number;
	}
	
   /**
	* 设置 
	* @param fail_number
	*/
 	public void setFail_number(java.lang.String fail_number) {
		this.fail_number = fail_number;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAmount() {
		return amount;
	}
	
   /**
	* 设置 
	* @param amount
	*/
 	public void setAmount(java.lang.String amount) {
		this.amount = amount;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_amount() {
		return trans_amount;
	}
	
   /**
	* 设置 
	* @param trans_amount
	*/
 	public void setTrans_amount(java.lang.String trans_amount) {
		this.trans_amount = trans_amount;
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
	public java.lang.String getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 
	* @param order_id
	*/
 	public void setOrder_id(java.lang.String order_id) {
		this.order_id = order_id;
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
	public java.lang.String getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.String sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
}
