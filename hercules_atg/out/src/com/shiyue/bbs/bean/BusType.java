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
@EntityPK(Pk = "bus_id", defaultColumn = false, tableName = "BUS_TYPE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BusTypeDto  extends BaseDtoImpl{//
	private java.lang.String bus_id;//
	private java.lang.String bus_name;//
	private java.lang.String bus_desc;//
	private java.lang.Short status;//
	private java.lang.String remark;//
	private java.lang.Short type;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_id() {
		return bus_id;
	}
	
   /**
	* 设置 
	* @param bus_id
	*/
 	public void setBus_id(java.lang.String bus_id) {
		this.bus_id = bus_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_name() {
		return bus_name;
	}
	
   /**
	* 设置 
	* @param bus_name
	*/
 	public void setBus_name(java.lang.String bus_name) {
		this.bus_name = bus_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_desc() {
		return bus_desc;
	}
	
   /**
	* 设置 
	* @param bus_desc
	*/
 	public void setBus_desc(java.lang.String bus_desc) {
		this.bus_desc = bus_desc;
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
