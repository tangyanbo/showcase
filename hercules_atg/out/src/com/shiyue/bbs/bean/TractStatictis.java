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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "TRACT_STATICTIS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TractStatictisDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long tract_id;//
	private java.lang.String statictis_date;//
	private java.lang.Long pay_amt;//
	private java.lang.String refund_amt;//
	private java.lang.Long use_amt;//
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
	public java.lang.Long getTract_id() {
		return tract_id;
	}
	
   /**
	* 设置 
	* @param tract_id
	*/
 	public void setTract_id(java.lang.Long tract_id) {
		this.tract_id = tract_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getStatictis_date() {
		return statictis_date;
	}
	
   /**
	* 设置 
	* @param statictis_date
	*/
 	public void setStatictis_date(java.lang.String statictis_date) {
		this.statictis_date = statictis_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getPay_amt() {
		return pay_amt;
	}
	
   /**
	* 设置 
	* @param pay_amt
	*/
 	public void setPay_amt(java.lang.Long pay_amt) {
		this.pay_amt = pay_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRefund_amt() {
		return refund_amt;
	}
	
   /**
	* 设置 
	* @param refund_amt
	*/
 	public void setRefund_amt(java.lang.String refund_amt) {
		this.refund_amt = refund_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getUse_amt() {
		return use_amt;
	}
	
   /**
	* 设置 
	* @param use_amt
	*/
 	public void setUse_amt(java.lang.Long use_amt) {
		this.use_amt = use_amt;
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
