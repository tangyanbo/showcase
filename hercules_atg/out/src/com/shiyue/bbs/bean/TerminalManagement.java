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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "terminal_management")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TerminalManagementDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String merchant_no;//
	private java.lang.String terminal_no;//
	private java.lang.String tmk;//
	private java.lang.String channel_type;//
	private java.lang.String tmk_local;//
	private java.lang.String pin_key;//
	private java.lang.String mac_key;//
	private java.lang.String track_key;//
	private java.lang.String lot_no;//
	private java.lang.String create_date;//
	private java.lang.String create_time;//
	private java.lang.String network_no;//
	private java.lang.String ext;//
	private java.lang.String ext1;//

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
	public java.lang.String getMerchant_no() {
		return merchant_no;
	}
	
   /**
	* 设置 
	* @param merchant_no
	*/
 	public void setMerchant_no(java.lang.String merchant_no) {
		this.merchant_no = merchant_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_no() {
		return terminal_no;
	}
	
   /**
	* 设置 
	* @param terminal_no
	*/
 	public void setTerminal_no(java.lang.String terminal_no) {
		this.terminal_no = terminal_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTmk() {
		return tmk;
	}
	
   /**
	* 设置 
	* @param tmk
	*/
 	public void setTmk(java.lang.String tmk) {
		this.tmk = tmk;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChannel_type() {
		return channel_type;
	}
	
   /**
	* 设置 
	* @param channel_type
	*/
 	public void setChannel_type(java.lang.String channel_type) {
		this.channel_type = channel_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTmk_local() {
		return tmk_local;
	}
	
   /**
	* 设置 
	* @param tmk_local
	*/
 	public void setTmk_local(java.lang.String tmk_local) {
		this.tmk_local = tmk_local;
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
	public java.lang.String getLot_no() {
		return lot_no;
	}
	
   /**
	* 设置 
	* @param lot_no
	*/
 	public void setLot_no(java.lang.String lot_no) {
		this.lot_no = lot_no;
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
	public java.lang.String getNetwork_no() {
		return network_no;
	}
	
   /**
	* 设置 
	* @param network_no
	*/
 	public void setNetwork_no(java.lang.String network_no) {
		this.network_no = network_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt() {
		return ext;
	}
	
   /**
	* 设置 
	* @param ext
	*/
 	public void setExt(java.lang.String ext) {
		this.ext = ext;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt1() {
		return ext1;
	}
	
   /**
	* 设置 
	* @param ext1
	*/
 	public void setExt1(java.lang.String ext1) {
		this.ext1 = ext1;
	}
}
