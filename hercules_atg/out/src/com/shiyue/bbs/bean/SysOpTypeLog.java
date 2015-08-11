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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SYS_OP_TYPE_LOG")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SysOpTypeLogDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String login_name;//
	private java.lang.String op_desc;//
	private java.lang.String op_url;//
	private java.lang.String ip;//
	private java.lang.String op_type;//
	private java.lang.String op_time;//
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
	public java.lang.String getOp_desc() {
		return op_desc;
	}
	
   /**
	* 设置 
	* @param op_desc
	*/
 	public void setOp_desc(java.lang.String op_desc) {
		this.op_desc = op_desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOp_url() {
		return op_url;
	}
	
   /**
	* 设置 
	* @param op_url
	*/
 	public void setOp_url(java.lang.String op_url) {
		this.op_url = op_url;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIp() {
		return ip;
	}
	
   /**
	* 设置 
	* @param ip
	*/
 	public void setIp(java.lang.String ip) {
		this.ip = ip;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOp_type() {
		return op_type;
	}
	
   /**
	* 设置 
	* @param op_type
	*/
 	public void setOp_type(java.lang.String op_type) {
		this.op_type = op_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOp_time() {
		return op_time;
	}
	
   /**
	* 设置 
	* @param op_time
	*/
 	public void setOp_time(java.lang.String op_time) {
		this.op_time = op_time;
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
