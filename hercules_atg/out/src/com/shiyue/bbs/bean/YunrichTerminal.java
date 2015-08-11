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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "yunrich_terminal")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class YunrichTerminalDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String pos_dev_id;//
	private java.lang.String file_code;//
	private java.lang.String sec_main_key;//
	private java.lang.String main_key;//
	private java.lang.String date;//
	private java.lang.String time;//
	private java.lang.String machine_no;//
	private java.lang.String bk_term_id;//
	private java.lang.String bk_mer_id;//
	private java.lang.String batch_id;//
	private java.lang.String pin_key;//
	private java.lang.String pack_key;//
	private java.lang.String mac_key;//
	private java.lang.String create_date;//
	private java.lang.String create_time;//
	private java.lang.String ext;//
	private java.lang.String ext1;//
	private java.lang.String pos_id;//

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
	public java.lang.String getPos_dev_id() {
		return pos_dev_id;
	}
	
   /**
	* 设置 
	* @param pos_dev_id
	*/
 	public void setPos_dev_id(java.lang.String pos_dev_id) {
		this.pos_dev_id = pos_dev_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFile_code() {
		return file_code;
	}
	
   /**
	* 设置 
	* @param file_code
	*/
 	public void setFile_code(java.lang.String file_code) {
		this.file_code = file_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSec_main_key() {
		return sec_main_key;
	}
	
   /**
	* 设置 
	* @param sec_main_key
	*/
 	public void setSec_main_key(java.lang.String sec_main_key) {
		this.sec_main_key = sec_main_key;
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
	public java.lang.String getDate() {
		return date;
	}
	
   /**
	* 设置 
	* @param date
	*/
 	public void setDate(java.lang.String date) {
		this.date = date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTime() {
		return time;
	}
	
   /**
	* 设置 
	* @param time
	*/
 	public void setTime(java.lang.String time) {
		this.time = time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMachine_no() {
		return machine_no;
	}
	
   /**
	* 设置 
	* @param machine_no
	*/
 	public void setMachine_no(java.lang.String machine_no) {
		this.machine_no = machine_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBk_term_id() {
		return bk_term_id;
	}
	
   /**
	* 设置 
	* @param bk_term_id
	*/
 	public void setBk_term_id(java.lang.String bk_term_id) {
		this.bk_term_id = bk_term_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBk_mer_id() {
		return bk_mer_id;
	}
	
   /**
	* 设置 
	* @param bk_mer_id
	*/
 	public void setBk_mer_id(java.lang.String bk_mer_id) {
		this.bk_mer_id = bk_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.String batch_id) {
		this.batch_id = batch_id;
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
	public java.lang.String getPack_key() {
		return pack_key;
	}
	
   /**
	* 设置 
	* @param pack_key
	*/
 	public void setPack_key(java.lang.String pack_key) {
		this.pack_key = pack_key;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPos_id() {
		return pos_id;
	}
	
   /**
	* 设置 
	* @param pos_id
	*/
 	public void setPos_id(java.lang.String pos_id) {
		this.pos_id = pos_id;
	}
}
