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
@EntityPK(Pk = "", defaultColumn = false, tableName = "SUB_MER_TRANS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerTransDto  extends BaseDtoImpl{//
	private java.lang.Long sub_mer_id;//
	private java.lang.String disp_mer_id;//
	private java.lang.String disp_mer_name;//
	private java.lang.String terminal_type;//
	private java.lang.String bus_type;//
	private java.lang.String clear_time;//
	private java.lang.String auth_status;//
	private java.lang.String auth_time;//
	private java.lang.String create_time;//
	private java.lang.String sub_mer_tract_r1;//
	private java.lang.String sub_mer_tract_r2;//
	private java.lang.String reserved;//
	private java.lang.String sub_access_type;//

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
	public java.lang.String getDisp_mer_id() {
		return disp_mer_id;
	}
	
   /**
	* 设置 
	* @param disp_mer_id
	*/
 	public void setDisp_mer_id(java.lang.String disp_mer_id) {
		this.disp_mer_id = disp_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDisp_mer_name() {
		return disp_mer_name;
	}
	
   /**
	* 设置 
	* @param disp_mer_name
	*/
 	public void setDisp_mer_name(java.lang.String disp_mer_name) {
		this.disp_mer_name = disp_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_type() {
		return terminal_type;
	}
	
   /**
	* 设置 
	* @param terminal_type
	*/
 	public void setTerminal_type(java.lang.String terminal_type) {
		this.terminal_type = terminal_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_type() {
		return bus_type;
	}
	
   /**
	* 设置 
	* @param bus_type
	*/
 	public void setBus_type(java.lang.String bus_type) {
		this.bus_type = bus_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getClear_time() {
		return clear_time;
	}
	
   /**
	* 设置 
	* @param clear_time
	*/
 	public void setClear_time(java.lang.String clear_time) {
		this.clear_time = clear_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_status() {
		return auth_status;
	}
	
   /**
	* 设置 
	* @param auth_status
	*/
 	public void setAuth_status(java.lang.String auth_status) {
		this.auth_status = auth_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_time() {
		return auth_time;
	}
	
   /**
	* 设置 
	* @param auth_time
	*/
 	public void setAuth_time(java.lang.String auth_time) {
		this.auth_time = auth_time;
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
	public java.lang.String getSub_mer_tract_r1() {
		return sub_mer_tract_r1;
	}
	
   /**
	* 设置 
	* @param sub_mer_tract_r1
	*/
 	public void setSub_mer_tract_r1(java.lang.String sub_mer_tract_r1) {
		this.sub_mer_tract_r1 = sub_mer_tract_r1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_tract_r2() {
		return sub_mer_tract_r2;
	}
	
   /**
	* 设置 
	* @param sub_mer_tract_r2
	*/
 	public void setSub_mer_tract_r2(java.lang.String sub_mer_tract_r2) {
		this.sub_mer_tract_r2 = sub_mer_tract_r2;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_access_type() {
		return sub_access_type;
	}
	
   /**
	* 设置 
	* @param sub_access_type
	*/
 	public void setSub_access_type(java.lang.String sub_access_type) {
		this.sub_access_type = sub_access_type;
	}
}
