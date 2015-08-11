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
@EntityPK(Pk = "cm_id", defaultColumn = false, tableName = "CSTP_MERHCANT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class CstpMerhcantDto  extends BaseDtoImpl{//
	private java.lang.Long cm_id;//
	private java.lang.String merchant_id;//
	private java.lang.String merchant_name;//
	private java.lang.String create_time;//
	private java.lang.String primery_key;//
	private java.lang.String develop_id;//
	private java.lang.String sp_id;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getCm_id() {
		return cm_id;
	}
	
   /**
	* 设置 
	* @param cm_id
	*/
 	public void setCm_id(java.lang.Long cm_id) {
		this.cm_id = cm_id;
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
	public java.lang.String getPrimery_key() {
		return primery_key;
	}
	
   /**
	* 设置 
	* @param primery_key
	*/
 	public void setPrimery_key(java.lang.String primery_key) {
		this.primery_key = primery_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDevelop_id() {
		return develop_id;
	}
	
   /**
	* 设置 
	* @param develop_id
	*/
 	public void setDevelop_id(java.lang.String develop_id) {
		this.develop_id = develop_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSp_id() {
		return sp_id;
	}
	
   /**
	* 设置 
	* @param sp_id
	*/
 	public void setSp_id(java.lang.String sp_id) {
		this.sp_id = sp_id;
	}
}
