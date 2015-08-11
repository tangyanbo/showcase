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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "TERMINAL_CHANGE_LOG")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TerminalChangeLogDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String terminal_id;//
	private java.lang.Long org_sub_mer_id;//
	private java.lang.Long org_mer_sys_id;//
	private java.lang.String org_login_name;//
	private java.lang.String org_login_pwd;//
	private java.lang.String org_version;//
	private java.lang.String change_date;//
	private java.lang.String change_desc;//
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
	public java.lang.Long getOrg_sub_mer_id() {
		return org_sub_mer_id;
	}
	
   /**
	* 设置 
	* @param org_sub_mer_id
	*/
 	public void setOrg_sub_mer_id(java.lang.Long org_sub_mer_id) {
		this.org_sub_mer_id = org_sub_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getOrg_mer_sys_id() {
		return org_mer_sys_id;
	}
	
   /**
	* 设置 
	* @param org_mer_sys_id
	*/
 	public void setOrg_mer_sys_id(java.lang.Long org_mer_sys_id) {
		this.org_mer_sys_id = org_mer_sys_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrg_login_name() {
		return org_login_name;
	}
	
   /**
	* 设置 
	* @param org_login_name
	*/
 	public void setOrg_login_name(java.lang.String org_login_name) {
		this.org_login_name = org_login_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrg_login_pwd() {
		return org_login_pwd;
	}
	
   /**
	* 设置 
	* @param org_login_pwd
	*/
 	public void setOrg_login_pwd(java.lang.String org_login_pwd) {
		this.org_login_pwd = org_login_pwd;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrg_version() {
		return org_version;
	}
	
   /**
	* 设置 
	* @param org_version
	*/
 	public void setOrg_version(java.lang.String org_version) {
		this.org_version = org_version;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_date() {
		return change_date;
	}
	
   /**
	* 设置 
	* @param change_date
	*/
 	public void setChange_date(java.lang.String change_date) {
		this.change_date = change_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getChange_desc() {
		return change_desc;
	}
	
   /**
	* 设置 
	* @param change_desc
	*/
 	public void setChange_desc(java.lang.String change_desc) {
		this.change_desc = change_desc;
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
