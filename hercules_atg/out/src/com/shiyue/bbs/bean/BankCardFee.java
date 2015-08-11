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
@EntityPK(Pk = "bank_id", defaultColumn = false, tableName = "BANK_CARD_FEE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BankCardFeeDto  extends BaseDtoImpl{//
	private java.lang.Long bank_id;//
	private java.lang.String bank_code;//
	private java.lang.String bank_name;//
	private java.lang.String fee;//
	private java.lang.String arrive_time;//
	private java.lang.String create_time;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBank_id() {
		return bank_id;
	}
	
   /**
	* 设置 
	* @param bank_id
	*/
 	public void setBank_id(java.lang.Long bank_id) {
		this.bank_id = bank_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_code() {
		return bank_code;
	}
	
   /**
	* 设置 
	* @param bank_code
	*/
 	public void setBank_code(java.lang.String bank_code) {
		this.bank_code = bank_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_name() {
		return bank_name;
	}
	
   /**
	* 设置 
	* @param bank_name
	*/
 	public void setBank_name(java.lang.String bank_name) {
		this.bank_name = bank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFee() {
		return fee;
	}
	
   /**
	* 设置 
	* @param fee
	*/
 	public void setFee(java.lang.String fee) {
		this.fee = fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getArrive_time() {
		return arrive_time;
	}
	
   /**
	* 设置 
	* @param arrive_time
	*/
 	public void setArrive_time(java.lang.String arrive_time) {
		this.arrive_time = arrive_time;
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
}
