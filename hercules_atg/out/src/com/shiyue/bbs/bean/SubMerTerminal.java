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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SUB_MER_TERMINAL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerTerminalDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String tsn;//
	private java.lang.String factory;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long plat_mer_id;//
	private java.lang.String version;//
	private java.lang.String category;//
	private java.lang.String create_time;//
	private java.lang.String active_time;//
	private java.lang.String last_update_time;//
	private java.lang.String terminal_info;//
	private java.lang.String login_name;//
	private java.lang.String login_pwd;//
	private java.lang.String last_login_time;//
	private java.lang.String last_login_info;//
	private java.lang.String status;//
	private java.lang.String reserved;//
	private java.lang.Long agent_id_l1;//
	private java.lang.Long agent_id_l2;//

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
	public java.lang.String getTsn() {
		return tsn;
	}
	
   /**
	* 设置 
	* @param tsn
	*/
 	public void setTsn(java.lang.String tsn) {
		this.tsn = tsn;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFactory() {
		return factory;
	}
	
   /**
	* 设置 
	* @param factory
	*/
 	public void setFactory(java.lang.String factory) {
		this.factory = factory;
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
	public java.lang.Long getPlat_mer_id() {
		return plat_mer_id;
	}
	
   /**
	* 设置 
	* @param plat_mer_id
	*/
 	public void setPlat_mer_id(java.lang.Long plat_mer_id) {
		this.plat_mer_id = plat_mer_id;
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
	public java.lang.String getActive_time() {
		return active_time;
	}
	
   /**
	* 设置 
	* @param active_time
	*/
 	public void setActive_time(java.lang.String active_time) {
		this.active_time = active_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLast_update_time() {
		return last_update_time;
	}
	
   /**
	* 设置 
	* @param last_update_time
	*/
 	public void setLast_update_time(java.lang.String last_update_time) {
		this.last_update_time = last_update_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_info() {
		return terminal_info;
	}
	
   /**
	* 设置 
	* @param terminal_info
	*/
 	public void setTerminal_info(java.lang.String terminal_info) {
		this.terminal_info = terminal_info;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLogin_name() {
		return login_name;
	}
	
   /**
	* 设置 
	* @param login_name
	*/
 	public void setLogin_name(java.lang.String login_name) {
		this.login_name = login_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLogin_pwd() {
		return login_pwd;
	}
	
   /**
	* 设置 
	* @param login_pwd
	*/
 	public void setLogin_pwd(java.lang.String login_pwd) {
		this.login_pwd = login_pwd;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLast_login_time() {
		return last_login_time;
	}
	
   /**
	* 设置 
	* @param last_login_time
	*/
 	public void setLast_login_time(java.lang.String last_login_time) {
		this.last_login_time = last_login_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLast_login_info() {
		return last_login_info;
	}
	
   /**
	* 设置 
	* @param last_login_info
	*/
 	public void setLast_login_info(java.lang.String last_login_info) {
		this.last_login_info = last_login_info;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id_l1() {
		return agent_id_l1;
	}
	
   /**
	* 设置 
	* @param agent_id_l1
	*/
 	public void setAgent_id_l1(java.lang.Long agent_id_l1) {
		this.agent_id_l1 = agent_id_l1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id_l2() {
		return agent_id_l2;
	}
	
   /**
	* 设置 
	* @param agent_id_l2
	*/
 	public void setAgent_id_l2(java.lang.Long agent_id_l2) {
		this.agent_id_l2 = agent_id_l2;
	}
}
