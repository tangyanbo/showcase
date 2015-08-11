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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_TRACT_TYPE_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerTractTypeInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long mcc_category_id;//
	private java.lang.String profit_type;//
	private java.lang.String mer_rate_1;//
	private java.lang.String mer_rate_2;//
	private java.lang.String mer_highest_fee;//
	private java.lang.String mer_lowest_fee;//
	private java.lang.String status;//
	private java.lang.String reserved;//

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
	public java.lang.Long getMcc_category_id() {
		return mcc_category_id;
	}
	
   /**
	* 设置 
	* @param mcc_category_id
	*/
 	public void setMcc_category_id(java.lang.Long mcc_category_id) {
		this.mcc_category_id = mcc_category_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProfit_type() {
		return profit_type;
	}
	
   /**
	* 设置 
	* @param profit_type
	*/
 	public void setProfit_type(java.lang.String profit_type) {
		this.profit_type = profit_type;
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
}
