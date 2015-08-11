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
@EntityPK(Pk = "ct_id", defaultColumn = false, tableName = "CSTP_TERMINAL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class CstpTerminalDto  extends BaseDtoImpl{//
	private java.lang.Long ct_id;//
	private java.lang.String merchant_id;//
	private java.lang.String terminal_id;//
	private java.lang.String create_time;//
	private java.lang.String sign_in_date;//
	private java.lang.String mac_key;//
	private java.lang.String pin_key;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getCt_id() {
		return ct_id;
	}
	
   /**
	* 设置 
	* @param ct_id
	*/
 	public void setCt_id(java.lang.Long ct_id) {
		this.ct_id = ct_id;
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
	public java.lang.String getSign_in_date() {
		return sign_in_date;
	}
	
   /**
	* 设置 
	* @param sign_in_date
	*/
 	public void setSign_in_date(java.lang.String sign_in_date) {
		this.sign_in_date = sign_in_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMac_key() {
		return mac_key;
	}
	
   /**
	* 设置 
	* @param mac_key
	*/
 	public void setMac_key(java.lang.String mac_key) {
		this.mac_key = mac_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPin_key() {
		return pin_key;
	}
	
   /**
	* 设置 
	* @param pin_key
	*/
 	public void setPin_key(java.lang.String pin_key) {
		this.pin_key = pin_key;
	}
}
