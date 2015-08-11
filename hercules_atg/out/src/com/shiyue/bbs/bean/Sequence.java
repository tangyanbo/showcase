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
@EntityPK(Pk = "name", defaultColumn = false, tableName = "sequence")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SequenceDto  extends BaseDtoImpl{//
	private java.lang.String name;//
	private java.lang.Long increment;//
	private java.lang.Long min_value;//
	private java.lang.Long max_value;//
	private java.lang.Long cur_value;//
	private java.lang.Boolean cycle;//

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
	public java.lang.Long getIncrement() {
		return increment;
	}
	
   /**
	* 设置 
	* @param increment
	*/
 	public void setIncrement(java.lang.Long increment) {
		this.increment = increment;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMin_value() {
		return min_value;
	}
	
   /**
	* 设置 
	* @param min_value
	*/
 	public void setMin_value(java.lang.Long min_value) {
		this.min_value = min_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMax_value() {
		return max_value;
	}
	
   /**
	* 设置 
	* @param max_value
	*/
 	public void setMax_value(java.lang.Long max_value) {
		this.max_value = max_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getCur_value() {
		return cur_value;
	}
	
   /**
	* 设置 
	* @param cur_value
	*/
 	public void setCur_value(java.lang.Long cur_value) {
		this.cur_value = cur_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Boolean getCycle() {
		return cycle;
	}
	
   /**
	* 设置 
	* @param cycle
	*/
 	public void setCycle(java.lang.Boolean cycle) {
		this.cycle = cycle;
	}
}
