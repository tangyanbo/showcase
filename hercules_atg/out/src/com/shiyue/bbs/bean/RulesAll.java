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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "RULES_ALL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class RulesAllDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String start_time;//
	private java.lang.String end_time;//
	private java.lang.String tract_night;//
	private java.lang.String tract_day;//
	private java.lang.String status;//
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
	public java.lang.String getStart_time() {
		return start_time;
	}
	
   /**
	* 设置 
	* @param start_time
	*/
 	public void setStart_time(java.lang.String start_time) {
		this.start_time = start_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getEnd_time() {
		return end_time;
	}
	
   /**
	* 设置 
	* @param end_time
	*/
 	public void setEnd_time(java.lang.String end_time) {
		this.end_time = end_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_night() {
		return tract_night;
	}
	
   /**
	* 设置 
	* @param tract_night
	*/
 	public void setTract_night(java.lang.String tract_night) {
		this.tract_night = tract_night;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTract_day() {
		return tract_day;
	}
	
   /**
	* 设置 
	* @param tract_day
	*/
 	public void setTract_day(java.lang.String tract_day) {
		this.tract_day = tract_day;
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
