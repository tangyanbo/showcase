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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "STOP_SETTLE_STATICTIS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class StopSettleStatictisDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_amt;//
	private java.lang.Long trans_fee;//
	private java.lang.Long clear_amt;//
	private java.lang.Long settle_date;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//
	private java.lang.String account_num;//
	private java.lang.String account_name;//
	private java.lang.String account_agency_id;//
	private java.lang.String reserved4;//
	private java.lang.String reserved5;//
	private java.lang.String mer_name;//
	private java.lang.Long mss_id;//

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
	public java.lang.Long getClear_amt() {
		return clear_amt;
	}
	
   /**
	* 设置 
	* @param clear_amt
	*/
 	public void setClear_amt(java.lang.Long clear_amt) {
		this.clear_amt = clear_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSettle_date() {
		return settle_date;
	}
	
   /**
	* 设置 
	* @param settle_date
	*/
 	public void setSettle_date(java.lang.Long settle_date) {
		this.settle_date = settle_date;
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
	public java.lang.Long getMss_id() {
		return mss_id;
	}
	
   /**
	* 设置 
	* @param mss_id
	*/
 	public void setMss_id(java.lang.Long mss_id) {
		this.mss_id = mss_id;
	}
}
