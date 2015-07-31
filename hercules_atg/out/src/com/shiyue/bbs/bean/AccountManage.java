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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "ACCOUNT_MANAGE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class AccountManageDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String mer_amt;//
	private java.lang.String fee_amt;//
	private java.lang.String account_type;//
	private java.lang.String status;//
	private java.lang.String settle_date;//
	private java.lang.String create_time;//
	private java.lang.String update_time;//
	private java.lang.String update_oper_id;//
	private java.lang.String change_status;//
	private java.lang.String change_amt;//
	private java.lang.String change_oper_id;//
	private java.lang.String change_reason;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//

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
	public java.lang.String getMer_amt() {
		return mer_amt;
	}
	
   /**
	* 设置 
	* @param mer_amt
	*/
 	public void setMer_amt(java.lang.String mer_amt) {
		this.mer_amt = mer_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFee_amt() {
		return fee_amt;
	}
	
   /**
	* 设置 
	* @param fee_amt
	*/
 	public void setFee_amt(java.lang.String fee_amt) {
		this.fee_amt = fee_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount_type() {
		return account_type;
	}
	
   /**
	* 设置 
	* @param account_type
	*/
 	public void setAccount_type(java.lang.String account_type) {
		this.account_type = account_type;
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
	public java.lang.String getUpdate_time() {
		return update_time;
	}
	
   /**
	* 设置 
	* @param update_time
	*/
 	public void setUpdate_time(java.lang.String update_time) {
		this.update_time = update_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUpdate_oper_id() {
		return update_oper_id;
	}
	
   /**
	* 设置 
	* @param update_oper_id
	*/
 	public void setUpdate_oper_id(java.lang.String update_oper_id) {
		this.update_oper_id = update_oper_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_status() {
		return change_status;
	}
	
   /**
	* 设置 
	* @param change_status
	*/
 	public void setChange_status(java.lang.String change_status) {
		this.change_status = change_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_amt() {
		return change_amt;
	}
	
   /**
	* 设置 
	* @param change_amt
	*/
 	public void setChange_amt(java.lang.String change_amt) {
		this.change_amt = change_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_oper_id() {
		return change_oper_id;
	}
	
   /**
	* 设置 
	* @param change_oper_id
	*/
 	public void setChange_oper_id(java.lang.String change_oper_id) {
		this.change_oper_id = change_oper_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_reason() {
		return change_reason;
	}
	
   /**
	* 设置 
	* @param change_reason
	*/
 	public void setChange_reason(java.lang.String change_reason) {
		this.change_reason = change_reason;
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
}
