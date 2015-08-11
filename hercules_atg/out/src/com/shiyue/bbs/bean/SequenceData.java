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
@EntityPK(Pk = "sequence_name", defaultColumn = false, tableName = "sequence_data")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SequenceDataDto  extends BaseDtoImpl{//
	private java.lang.String sequence_name;//
	private java.lang.Long sequence_increment;//
	private java.lang.Long sequence_min_value;//
	private java.lang.Long sequence_max_value;//
	private java.lang.Long sequence_cur_value;//
	private java.lang.Boolean sequence_cycle;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSequence_name() {
		return sequence_name;
	}
	
   /**
	* 设置 
	* @param sequence_name
	*/
 	public void setSequence_name(java.lang.String sequence_name) {
		this.sequence_name = sequence_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSequence_increment() {
		return sequence_increment;
	}
	
   /**
	* 设置 
	* @param sequence_increment
	*/
 	public void setSequence_increment(java.lang.Long sequence_increment) {
		this.sequence_increment = sequence_increment;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSequence_min_value() {
		return sequence_min_value;
	}
	
   /**
	* 设置 
	* @param sequence_min_value
	*/
 	public void setSequence_min_value(java.lang.Long sequence_min_value) {
		this.sequence_min_value = sequence_min_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSequence_max_value() {
		return sequence_max_value;
	}
	
   /**
	* 设置 
	* @param sequence_max_value
	*/
 	public void setSequence_max_value(java.lang.Long sequence_max_value) {
		this.sequence_max_value = sequence_max_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSequence_cur_value() {
		return sequence_cur_value;
	}
	
   /**
	* 设置 
	* @param sequence_cur_value
	*/
 	public void setSequence_cur_value(java.lang.Long sequence_cur_value) {
		this.sequence_cur_value = sequence_cur_value;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Boolean getSequence_cycle() {
		return sequence_cycle;
	}
	
   /**
	* 设置 
	* @param sequence_cycle
	*/
 	public void setSequence_cycle(java.lang.Boolean sequence_cycle) {
		this.sequence_cycle = sequence_cycle;
	}
}
