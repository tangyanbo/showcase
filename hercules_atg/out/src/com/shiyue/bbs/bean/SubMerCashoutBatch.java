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
@EntityPK(Pk = "batch_id", defaultColumn = false, tableName = "SUB_MER_CASHOUT_BATCH")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerCashoutBatchDto  extends BaseDtoImpl{//
	private java.lang.Long batch_id;//
	private java.lang.Long batch_date;//
	private java.lang.String prder_amt;//
	private java.lang.String create_date;//
	private java.lang.String finish_time;//
	private java.lang.String trans_fee;//
	private java.lang.String ordeer_count;//
	private java.lang.String status;//
	private java.lang.String reservaed1;//
	private java.lang.String reservaed2;//
	private java.lang.String reservaed3;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.Long batch_id) {
		this.batch_id = batch_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBatch_date() {
		return batch_date;
	}
	
   /**
	* 设置 
	* @param batch_date
	*/
 	public void setBatch_date(java.lang.Long batch_date) {
		this.batch_date = batch_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPrder_amt() {
		return prder_amt;
	}
	
   /**
	* 设置 
	* @param prder_amt
	*/
 	public void setPrder_amt(java.lang.String prder_amt) {
		this.prder_amt = prder_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCreate_date() {
		return create_date;
	}
	
   /**
	* 设置 
	* @param create_date
	*/
 	public void setCreate_date(java.lang.String create_date) {
		this.create_date = create_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFinish_time() {
		return finish_time;
	}
	
   /**
	* 设置 
	* @param finish_time
	*/
 	public void setFinish_time(java.lang.String finish_time) {
		this.finish_time = finish_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.lang.String trans_fee) {
		this.trans_fee = trans_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrdeer_count() {
		return ordeer_count;
	}
	
   /**
	* 设置 
	* @param ordeer_count
	*/
 	public void setOrdeer_count(java.lang.String ordeer_count) {
		this.ordeer_count = ordeer_count;
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
	public java.lang.String getReservaed1() {
		return reservaed1;
	}
	
   /**
	* 设置 
	* @param reservaed1
	*/
 	public void setReservaed1(java.lang.String reservaed1) {
		this.reservaed1 = reservaed1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReservaed2() {
		return reservaed2;
	}
	
   /**
	* 设置 
	* @param reservaed2
	*/
 	public void setReservaed2(java.lang.String reservaed2) {
		this.reservaed2 = reservaed2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReservaed3() {
		return reservaed3;
	}
	
   /**
	* 设置 
	* @param reservaed3
	*/
 	public void setReservaed3(java.lang.String reservaed3) {
		this.reservaed3 = reservaed3;
	}
}
