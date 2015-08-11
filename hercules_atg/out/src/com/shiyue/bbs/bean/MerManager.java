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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_MANAGER")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerManagerDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String mid;//
	private java.lang.String mer_type;//
	private java.lang.String login_name;//
	private java.lang.String login_pwd;//
	private java.lang.String purview;//
	private java.lang.String real_name;//
	private java.lang.String phone;//
	private java.lang.String email;//
	private java.lang.Long login_count;//
	private java.lang.String last_login_time;//
	private java.lang.String login_ip;//
	private java.lang.String create_time;//
	private java.lang.Short status;//
	private java.lang.String remark;//

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
	public java.lang.String getMid() {
		return mid;
	}
	
   /**
	* 设置 
	* @param mid
	*/
 	public void setMid(java.lang.String mid) {
		this.mid = mid;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_type() {
		return mer_type;
	}
	
   /**
	* 设置 
	* @param mer_type
	*/
 	public void setMer_type(java.lang.String mer_type) {
		this.mer_type = mer_type;
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
	public java.lang.String getPurview() {
		return purview;
	}
	
   /**
	* 设置 
	* @param purview
	*/
 	public void setPurview(java.lang.String purview) {
		this.purview = purview;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReal_name() {
		return real_name;
	}
	
   /**
	* 设置 
	* @param real_name
	*/
 	public void setReal_name(java.lang.String real_name) {
		this.real_name = real_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPhone() {
		return phone;
	}
	
   /**
	* 设置 
	* @param phone
	*/
 	public void setPhone(java.lang.String phone) {
		this.phone = phone;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getEmail() {
		return email;
	}
	
   /**
	* 设置 
	* @param email
	*/
 	public void setEmail(java.lang.String email) {
		this.email = email;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getLogin_count() {
		return login_count;
	}
	
   /**
	* 设置 
	* @param login_count
	*/
 	public void setLogin_count(java.lang.Long login_count) {
		this.login_count = login_count;
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
	public java.lang.String getLogin_ip() {
		return login_ip;
	}
	
   /**
	* 设置 
	* @param login_ip
	*/
 	public void setLogin_ip(java.lang.String login_ip) {
		this.login_ip = login_ip;
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
	public java.lang.Short getStatus() {
		return status;
	}
	
   /**
	* 设置 
	* @param status
	*/
 	public void setStatus(java.lang.Short status) {
		this.status = status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRemark() {
		return remark;
	}
	
   /**
	* 设置 
	* @param remark
	*/
 	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
}
