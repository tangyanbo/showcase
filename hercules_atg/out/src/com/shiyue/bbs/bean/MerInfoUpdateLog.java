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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_INFO_UPDATE_LOG")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerInfoUpdateLogDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mer_id;//
	private java.lang.Short mer_type;//
	private java.lang.String org_value;//
	private java.lang.String new_value;//
	private java.lang.String org_time;//
	private java.lang.String update_time;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//

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
	public java.lang.Long getMer_id() {
		return mer_id;
	}
	
   /**
	* 设置 
	* @param mer_id
	*/
 	public void setMer_id(java.lang.Long mer_id) {
		this.mer_id = mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getMer_type() {
		return mer_type;
	}
	
   /**
	* 设置 
	* @param mer_type
	*/
 	public void setMer_type(java.lang.Short mer_type) {
		this.mer_type = mer_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrg_value() {
		return org_value;
	}
	
   /**
	* 设置 
	* @param org_value
	*/
 	public void setOrg_value(java.lang.String org_value) {
		this.org_value = org_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getNew_value() {
		return new_value;
	}
	
   /**
	* 设置 
	* @param new_value
	*/
 	public void setNew_value(java.lang.String new_value) {
		this.new_value = new_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrg_time() {
		return org_time;
	}
	
   /**
	* 设置 
	* @param org_time
	*/
 	public void setOrg_time(java.lang.String org_time) {
		this.org_time = org_time;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved1() {
		return reserved1;
	}
	
   /**
	* 设置 
	* @param reserved1
	*/
 	public void setReserved1(java.lang.String reserved1) {
		this.reserved1 = reserved1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved2() {
		return reserved2;
	}
	
   /**
	* 设置 
	* @param reserved2
	*/
 	public void setReserved2(java.lang.String reserved2) {
		this.reserved2 = reserved2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved3() {
		return reserved3;
	}
	
   /**
	* 设置 
	* @param reserved3
	*/
 	public void setReserved3(java.lang.String reserved3) {
		this.reserved3 = reserved3;
	}
}
