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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "MCC_CODE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MccCodeDto  extends BaseDtoImpl{//
	private java.lang.String remark;//
	private java.lang.String profit;//
	private java.lang.String desc;//
	private java.lang.String mcc;//
	private java.lang.Long id;//

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
	public java.lang.String getProfit() {
		return profit;
	}
	
   /**
	* 设置 
	* @param profit
	*/
 	public void setProfit(java.lang.String profit) {
		this.profit = profit;
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
	public java.lang.String getMcc() {
		return mcc;
	}
	
   /**
	* 设置 
	* @param mcc
	*/
 	public void setMcc(java.lang.String mcc) {
		this.mcc = mcc;
	}
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
}
