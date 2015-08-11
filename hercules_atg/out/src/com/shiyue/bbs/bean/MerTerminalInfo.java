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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_TERMINAL_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerTerminalInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String category;//
	private java.lang.String terminal_code;//
	private java.lang.String terminal_systerm;//
	private java.lang.String file_name;//
	private java.lang.String version;//
	private java.lang.String version_desc;//
	private java.lang.String update_type;//
	private java.lang.String update_path;//
	private java.lang.String create_time;//
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
	public java.lang.String getCategory() {
		return category;
	}
	
   /**
	* 设置 
	* @param category
	*/
 	public void setCategory(java.lang.String category) {
		this.category = category;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_code() {
		return terminal_code;
	}
	
   /**
	* 设置 
	* @param terminal_code
	*/
 	public void setTerminal_code(java.lang.String terminal_code) {
		this.terminal_code = terminal_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_systerm() {
		return terminal_systerm;
	}
	
   /**
	* 设置 
	* @param terminal_systerm
	*/
 	public void setTerminal_systerm(java.lang.String terminal_systerm) {
		this.terminal_systerm = terminal_systerm;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFile_name() {
		return file_name;
	}
	
   /**
	* 设置 
	* @param file_name
	*/
 	public void setFile_name(java.lang.String file_name) {
		this.file_name = file_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getVersion() {
		return version;
	}
	
   /**
	* 设置 
	* @param version
	*/
 	public void setVersion(java.lang.String version) {
		this.version = version;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getVersion_desc() {
		return version_desc;
	}
	
   /**
	* 设置 
	* @param version_desc
	*/
 	public void setVersion_desc(java.lang.String version_desc) {
		this.version_desc = version_desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUpdate_type() {
		return update_type;
	}
	
   /**
	* 设置 
	* @param update_type
	*/
 	public void setUpdate_type(java.lang.String update_type) {
		this.update_type = update_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUpdate_path() {
		return update_path;
	}
	
   /**
	* 设置 
	* @param update_path
	*/
 	public void setUpdate_path(java.lang.String update_path) {
		this.update_path = update_path;
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
