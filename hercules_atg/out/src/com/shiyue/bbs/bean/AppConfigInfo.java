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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "APP_CONFIG_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class AppConfigInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String apk_name;//
	private java.lang.String pic_url;//
	private java.lang.String apk_url;//
	private java.lang.String entrance_name;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String version;//

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
	public java.lang.String getApk_name() {
		return apk_name;
	}
	
   /**
	* 设置 
	* @param apk_name
	*/
 	public void setApk_name(java.lang.String apk_name) {
		this.apk_name = apk_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPic_url() {
		return pic_url;
	}
	
   /**
	* 设置 
	* @param pic_url
	*/
 	public void setPic_url(java.lang.String pic_url) {
		this.pic_url = pic_url;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getApk_url() {
		return apk_url;
	}
	
   /**
	* 设置 
	* @param apk_url
	*/
 	public void setApk_url(java.lang.String apk_url) {
		this.apk_url = apk_url;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getEntrance_name() {
		return entrance_name;
	}
	
   /**
	* 设置 
	* @param entrance_name
	*/
 	public void setEntrance_name(java.lang.String entrance_name) {
		this.entrance_name = entrance_name;
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
}
