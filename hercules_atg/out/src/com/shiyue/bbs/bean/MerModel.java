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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_MODEL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerModelDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String model_name;//
	private java.lang.String model_no;//
	private java.lang.String path;//
	private java.lang.String desc;//
	private java.lang.String super_no;//
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
	public java.lang.String getModel_name() {
		return model_name;
	}
	
   /**
	* 设置 
	* @param model_name
	*/
 	public void setModel_name(java.lang.String model_name) {
		this.model_name = model_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getModel_no() {
		return model_no;
	}
	
   /**
	* 设置 
	* @param model_no
	*/
 	public void setModel_no(java.lang.String model_no) {
		this.model_no = model_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPath() {
		return path;
	}
	
   /**
	* 设置 
	* @param path
	*/
 	public void setPath(java.lang.String path) {
		this.path = path;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDesc() {
		return desc;
	}
	
   /**
	* 设置 
	* @param desc
	*/
 	public void setDesc(java.lang.String desc) {
		this.desc = desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSuper_no() {
		return super_no;
	}
	
   /**
	* 设置 
	* @param super_no
	*/
 	public void setSuper_no(java.lang.String super_no) {
		this.super_no = super_no;
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
