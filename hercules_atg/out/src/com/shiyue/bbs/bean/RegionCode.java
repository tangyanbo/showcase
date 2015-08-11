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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "REGION_CODE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class RegionCodeDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String code;//
	private java.lang.String name;//
	private java.lang.String super_code;//
	private java.lang.Long level;//
	private java.lang.String remark;//
	private java.lang.String remark1;//

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
	public java.lang.String getCode() {
		return code;
	}
	
   /**
	* 设置 
	* @param code
	*/
 	public void setCode(java.lang.String code) {
		this.code = code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getName() {
		return name;
	}
	
   /**
	* 设置 
	* @param name
	*/
 	public void setName(java.lang.String name) {
		this.name = name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSuper_code() {
		return super_code;
	}
	
   /**
	* 设置 
	* @param super_code
	*/
 	public void setSuper_code(java.lang.String super_code) {
		this.super_code = super_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getLevel() {
		return level;
	}
	
   /**
	* 设置 
	* @param level
	*/
 	public void setLevel(java.lang.Long level) {
		this.level = level;
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
	public java.lang.String getRemark1() {
		return remark1;
	}
	
   /**
	* 设置 
	* @param remark1
	*/
 	public void setRemark1(java.lang.String remark1) {
		this.remark1 = remark1;
	}
}
