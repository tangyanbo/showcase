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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SUB_OPERATOR_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubOperatorInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.String operator_id;//
	private java.lang.String operator_name;//
	private java.lang.String contactor;//
	private java.lang.String contactor_phone;//
	private java.lang.String contactor_addr;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String remark;//
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
	public java.lang.String getOperator_id() {
		return operator_id;
	}
	
   /**
	* 设置 
	* @param operator_id
	*/
 	public void setOperator_id(java.lang.String operator_id) {
		this.operator_id = operator_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOperator_name() {
		return operator_name;
	}
	
   /**
	* 设置 
	* @param operator_name
	*/
 	public void setOperator_name(java.lang.String operator_name) {
		this.operator_name = operator_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor() {
		return contactor;
	}
	
   /**
	* 设置 
	* @param contactor
	*/
 	public void setContactor(java.lang.String contactor) {
		this.contactor = contactor;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor_phone() {
		return contactor_phone;
	}
	
   /**
	* 设置 
	* @param contactor_phone
	*/
 	public void setContactor_phone(java.lang.String contactor_phone) {
		this.contactor_phone = contactor_phone;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor_addr() {
		return contactor_addr;
	}
	
   /**
	* 设置 
	* @param contactor_addr
	*/
 	public void setContactor_addr(java.lang.String contactor_addr) {
		this.contactor_addr = contactor_addr;
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
}
