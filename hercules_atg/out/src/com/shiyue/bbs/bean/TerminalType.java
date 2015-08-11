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
@EntityPK(Pk = "product_id", defaultColumn = false, tableName = "TERMINAL_TYPE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TerminalTypeDto  extends BaseDtoImpl{//
	private java.lang.String product_id;//
	private java.lang.String product_name;//
	private java.lang.String product_desc;//
	private java.lang.Short status;//
	private java.lang.String remark;//
	private java.lang.Short type;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProduct_id() {
		return product_id;
	}
	
   /**
	* 设置 
	* @param product_id
	*/
 	public void setProduct_id(java.lang.String product_id) {
		this.product_id = product_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProduct_name() {
		return product_name;
	}
	
   /**
	* 设置 
	* @param product_name
	*/
 	public void setProduct_name(java.lang.String product_name) {
		this.product_name = product_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProduct_desc() {
		return product_desc;
	}
	
   /**
	* 设置 
	* @param product_desc
	*/
 	public void setProduct_desc(java.lang.String product_desc) {
		this.product_desc = product_desc;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getType() {
		return type;
	}
	
   /**
	* 设置 
	* @param type
	*/
 	public void setType(java.lang.Short type) {
		this.type = type;
	}
}
