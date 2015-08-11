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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_ACCOUNT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerAccountDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String sett_account_name;//
	private java.lang.String sett_account_no;//
	private java.lang.String sett_agency;//
	private java.lang.String sett_acc_type;//
	private java.lang.String status;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//
	private java.lang.String reserved4;//
	private java.lang.String reserved5;//
	private java.lang.String sett_agency_name;//
	private java.lang.Long deduction_type;//

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
	public java.lang.String getSett_account_name() {
		return sett_account_name;
	}
	
   /**
	* 设置 
	* @param sett_account_name
	*/
 	public void setSett_account_name(java.lang.String sett_account_name) {
		this.sett_account_name = sett_account_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_account_no() {
		return sett_account_no;
	}
	
   /**
	* 设置 
	* @param sett_account_no
	*/
 	public void setSett_account_no(java.lang.String sett_account_no) {
		this.sett_account_no = sett_account_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_agency() {
		return sett_agency;
	}
	
   /**
	* 设置 
	* @param sett_agency
	*/
 	public void setSett_agency(java.lang.String sett_agency) {
		this.sett_agency = sett_agency;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_acc_type() {
		return sett_acc_type;
	}
	
   /**
	* 设置 
	* @param sett_acc_type
	*/
 	public void setSett_acc_type(java.lang.String sett_acc_type) {
		this.sett_acc_type = sett_acc_type;
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
	public java.lang.String getReserved4() {
		return reserved4;
	}
	
   /**
	* 设置 
	* @param reserved4
	*/
 	public void setReserved4(java.lang.String reserved4) {
		this.reserved4 = reserved4;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved5() {
		return reserved5;
	}
	
   /**
	* 设置 
	* @param reserved5
	*/
 	public void setReserved5(java.lang.String reserved5) {
		this.reserved5 = reserved5;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_agency_name() {
		return sett_agency_name;
	}
	
   /**
	* 设置 
	* @param sett_agency_name
	*/
 	public void setSett_agency_name(java.lang.String sett_agency_name) {
		this.sett_agency_name = sett_agency_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getDeduction_type() {
		return deduction_type;
	}
	
   /**
	* 设置 
	* @param deduction_type
	*/
 	public void setDeduction_type(java.lang.Long deduction_type) {
		this.deduction_type = deduction_type;
	}
}
