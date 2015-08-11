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
@EntityPK(Pk = "", defaultColumn = false, tableName = "V2_CSTP_CSN")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2CstpCsnDto  extends BaseDtoImpl{//
	private java.lang.String merchant_id;//
	private java.lang.String terminal_id;//
	private java.lang.String card_serial_no;//
	private java.lang.String main_key;//
	private java.lang.String security_key;//
	private java.lang.String pin_key;//
	private java.lang.String mac_key;//
	private java.lang.String track_key;//
	private java.lang.String ccd_status;//
	private java.lang.String create_time;//
	private java.lang.String merchant_name;//
	private java.lang.String sp_id;//
	private java.lang.String update_time;//

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
	public java.lang.String getCard_serial_no() {
		return card_serial_no;
	}
	
   /**
	* 设置 
	* @param card_serial_no
	*/
 	public void setCard_serial_no(java.lang.String card_serial_no) {
		this.card_serial_no = card_serial_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMain_key() {
		return main_key;
	}
	
   /**
	* 设置 
	* @param main_key
	*/
 	public void setMain_key(java.lang.String main_key) {
		this.main_key = main_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSecurity_key() {
		return security_key;
	}
	
   /**
	* 设置 
	* @param security_key
	*/
 	public void setSecurity_key(java.lang.String security_key) {
		this.security_key = security_key;
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
	public java.lang.String getTrack_key() {
		return track_key;
	}
	
   /**
	* 设置 
	* @param track_key
	*/
 	public void setTrack_key(java.lang.String track_key) {
		this.track_key = track_key;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCcd_status() {
		return ccd_status;
	}
	
   /**
	* 设置 
	* @param ccd_status
	*/
 	public void setCcd_status(java.lang.String ccd_status) {
		this.ccd_status = ccd_status;
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
}
