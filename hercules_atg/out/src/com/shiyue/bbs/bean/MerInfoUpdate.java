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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MER_INFO_UPDATE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerInfoUpdateDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long mid;//
	private java.lang.Short mer_type;//
	private java.lang.String modify_type;//
	private java.lang.String value;//
	private java.lang.Short status;//
	private java.lang.String create_time;//
	private java.lang.String update_time;//
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
	public java.lang.Long getMid() {
		return mid;
	}
	
   /**
	* 设置 
	* @param mid
	*/
 	public void setMid(java.lang.Long mid) {
		this.mid = mid;
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
	public java.lang.String getModify_type() {
		return modify_type;
	}
	
   /**
	* 设置 
	* @param modify_type
	*/
 	public void setModify_type(java.lang.String modify_type) {
		this.modify_type = modify_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getValue() {
		return value;
	}
	
   /**
	* 设置 
	* @param value
	*/
 	public void setValue(java.lang.String value) {
		this.value = value;
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
