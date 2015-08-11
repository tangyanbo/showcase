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
@EntityPK(Pk = "", defaultColumn = false, tableName = "ORDER_RISK")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class OrderRiskDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.Long sub_mer_id;//
	private java.lang.String order_risk_type;//
	private java.lang.String order_risk_proctype;//0:继续交易1:报警（默认）2:拒绝
	private java.lang.String order_risk_proctime;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//
	private java.lang.String ext;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 
	* @param order_id
	*/
 	public void setOrder_id(java.lang.Long order_id) {
		this.order_id = order_id;
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
	public java.lang.String getOrder_risk_type() {
		return order_risk_type;
	}
	
   /**
	* 设置 
	* @param order_risk_type
	*/
 	public void setOrder_risk_type(java.lang.String order_risk_type) {
		this.order_risk_type = order_risk_type;
	}
   /**
	* 获取 0:继续交易1:报警（默认）2:拒绝
	* @return
	*/
	public java.lang.String getOrder_risk_proctype() {
		return order_risk_proctype;
	}
	
   /**
	* 设置 0:继续交易1:报警（默认）2:拒绝
	* @param order_risk_proctype
	*/
 	public void setOrder_risk_proctype(java.lang.String order_risk_proctype) {
		this.order_risk_proctype = order_risk_proctype;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_risk_proctime() {
		return order_risk_proctime;
	}
	
   /**
	* 设置 
	* @param order_risk_proctime
	*/
 	public void setOrder_risk_proctime(java.lang.String order_risk_proctime) {
		this.order_risk_proctime = order_risk_proctime;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt() {
		return ext;
	}
	
   /**
	* 设置 
	* @param ext
	*/
 	public void setExt(java.lang.String ext) {
		this.ext = ext;
	}
}
